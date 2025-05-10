# No imports needed for basic functionality

# --- Global Editor State ---

buffer = []  # Stores the lines of text
cursor_row = 0  # Current line index
cursor_col = 0  # Current column index within the line
show_line_cursor = False  # Toggle for line indicator ('*' or ' ')
show_row_cursor = False  # Toggle for character highlight
yank_buffer = []  # Stores copied/deleted lines
undo_stack = []  # Stack for multi-level undo states
last_modifying_command = None  # Stores last command for repeat
# Help text displayed by '?' command
help_text = """
? - display this help info
. - toggle row cursor on and off
; - toggle line cursor on and off
h - move cursor left
j - move cursor up
k - move cursor down
l - move cursor right
^ - move cursor to beginning of the line
$ - move cursor to end of the line
w - move cursor to beginning of next word
b - move cursor to beginning of previous word
i - insert <text> before cursor
a - append <text> after cursor
x - delete character at cursor
dw - delete word and trailing spaces at cursor
yy - copy current line to memory
p - paste copied line(s) below line cursor
P - paste copied line(s) above line cursor
dd - delete line
o - insert empty line below
O - insert empty line above
u - undo previous command
r - repeat last command
s - show content
q - quit program
"""

# --- State Management Functions ---

def save_state_for_undo():
    """Saves the current editor state onto the undo stack."""
    global buffer, cursor_row, cursor_col, show_line_cursor, show_row_cursor, last_modifying_command, undo_stack
    buffer_copy = list(buffer)
    last_cmd_copy = last_modifying_command
    undo_stack.append((buffer_copy, cursor_row, cursor_col,
                       show_line_cursor, show_row_cursor,
                       last_cmd_copy))

def save_last_command(command_char, args=None):
    """Saves the last modifying command details for the 'r' (repeat) command."""
    global last_modifying_command
    last_modifying_command = (command_char, args)

# --- Cursor and Display Functions ---

def validate_cursor():
    """Ensures cursor row and column are within valid bounds."""
    global buffer, cursor_row, cursor_col
    if not buffer:
        cursor_row = 0
        cursor_col = 0
        return
    cursor_row = max(0, min(cursor_row, len(buffer) - 1))
    current_line_len = len(buffer[cursor_row])
    if current_line_len == 0:
        cursor_col = 0
    else:
        max_valid_col_index = current_line_len - 1
        cursor_col = min(cursor_col, max_valid_col_index)
    cursor_col = max(0, cursor_col)

def display_editor():
    """Displays the editor content with optional line and row cursors."""
    global buffer, cursor_row, cursor_col, show_line_cursor, show_row_cursor
    GREEN_BG = "\033[42m"
    RESET = "\033[0m"

    for i, line in enumerate(buffer):
        prefix = ""
        if show_line_cursor:
            prefix = "*" if i == cursor_row else " "
        display_line = line
        if show_row_cursor and i == cursor_row:
             col = cursor_col
             if col < len(line):
                 char_at_cursor = line[col]
                 display_line = line[:col] + GREEN_BG + char_at_cursor + RESET + line[col+1:]
        print(f"{prefix}{display_line}")

# --- Command Handler Functions ---

def handle_motion_commands(command_char):
    """Handles cursor motion commands (h, j, k, l, ^, $, w, b)."""
    global buffer, cursor_row, cursor_col
    needs_validation = True
    if command_char == 'h':
        cursor_col -= 1
    elif command_char == 'j':
        if cursor_row > 0:
            cursor_row -= 1
            validate_cursor()
            needs_validation = False
    elif command_char == 'k':
        if cursor_row < len(buffer) - 1:
            cursor_row += 1
            validate_cursor()
            needs_validation = False
    elif command_char == 'l':
        current_line_len = len(buffer[cursor_row]) if buffer else 0
        if cursor_col < current_line_len:
             cursor_col += 1
    elif command_char == '^':
        cursor_col = 0
    elif command_char == '$':
        validate_cursor()
        current_line_len = len(buffer[cursor_row]) if buffer else 0
        cursor_col = max(0, current_line_len - 1) if current_line_len > 0 else 0
    elif command_char == 'w':
         validate_cursor()
         if not buffer: return True
         line = buffer[cursor_row]
         start_search = cursor_col
         while start_search < len(line) and not line[start_search].isspace():
             start_search += 1
         while start_search < len(line) and line[start_search].isspace():
             start_search += 1
         if start_search < len(line):
             cursor_col = start_search
    elif command_char == 'b':
         validate_cursor()
         if not buffer: return True
         line = buffer[cursor_row]
         pos = cursor_col
         if pos > 0:
             temp_pos = pos - 1
             while temp_pos >= 0 and line[temp_pos].isspace():
                 temp_pos -= 1
             while temp_pos >= 0 and not line[temp_pos].isspace():
                 temp_pos -= 1
             cursor_col = temp_pos + 1

    return needs_validation

def handle_edit_commands(command_char, args):
    """Handles editing commands (i, a, x, dw, dd, o, O)."""
    global buffer, cursor_row, cursor_col
    if command_char == 'i':
        if args is not None and args != "":
            validate_cursor()
            if not buffer:
                buffer = [""]
                cursor_row = 0
                cursor_col = 0
            row = cursor_row
            col = cursor_col
            current_line_len = len(buffer[row])
            col = max(0, min(col, current_line_len))
            line = buffer[row]
            buffer[row] = line[:col] + args + line[col:]
    elif command_char == 'a':
         if args is not None and args != "":
            validate_cursor()
            if not buffer:
                buffer = [""]
                cursor_row = 0
                cursor_col = 0
            row = cursor_row
            col = cursor_col
            line = buffer[row]
            effective_col = col
            if effective_col < len(line):
                 effective_col += 1
            inserted_text_len = len(args)
            buffer[row] = line[:effective_col] + args + line[effective_col:]
            if inserted_text_len > 0:
                 cursor_col = effective_col + inserted_text_len - 1
    elif command_char == 'x':
        validate_cursor()
        if not buffer: return
        row = cursor_row
        col = cursor_col
        line = buffer[row]
        if col < len(line):
            buffer[row] = line[:col] + line[col+1:]
        if not buffer[row] and len(buffer[row]) == 0:
             buffer[row] = ""
    elif command_char == 'dw':
         validate_cursor()
         if not buffer: return
         row = cursor_row
         start_col = cursor_col
         line = buffer[row]
         if start_col >= len(line):
              pass
         else:
              end_col = start_col
              while end_col < len(line) and not line[end_col].isspace():
                  end_col += 1
              while end_col < len(line) and line[end_col].isspace():
                  end_col += 1
              buffer[row] = line[:start_col] + line[end_col:]
              cursor_col = start_col
              if not buffer[row] and len(buffer[row]) == 0:
                  buffer[row] = ""
    elif command_char == 'dd':
        if not buffer:
             pass
        else:
            validate_cursor()
            original_col = cursor_col
            row = cursor_row
            buffer.pop(row)
            if not buffer:
                buffer = []
                cursor_row = 0
                cursor_col = 0
            else:
                if cursor_row >= len(buffer):
                    cursor_row = len(buffer) - 1
                cursor_col = original_col
    elif command_char == 'o':
        if not buffer:
            buffer = [""]
            cursor_row = 1
        else:
            validate_cursor()
            buffer.insert(cursor_row + 1, "")
            cursor_row += 1
        cursor_col = 0
    elif command_char == 'O':
         if not buffer:
            buffer = [""]
            cursor_row = 0
         else:
            validate_cursor()
            buffer.insert(cursor_row, "")
         cursor_col = 0

def handle_yank_paste_commands(command_char):
    """Handles yank and paste commands (yy, p, P)."""
    global buffer, cursor_row, cursor_col, yank_buffer
    if command_char == 'yy':
        if not buffer:
             pass
        else:
             validate_cursor()
             yank_buffer = [buffer[cursor_row]]
    elif command_char == 'p':
        if yank_buffer:
            validate_cursor()
            original_col = cursor_col
            insert_row = cursor_row + 1
            yank_copy = [line for line in yank_buffer]
            buffer[insert_row:insert_row] = yank_copy
            cursor_row += 1
            cursor_col = original_col
    elif command_char == 'P':
        if yank_buffer:
            validate_cursor()
            original_col = cursor_col
            insert_row = cursor_row
            yank_copy = [line for line in yank_buffer]
            buffer[insert_row:insert_row] = yank_copy
            cursor_col = original_col

def handle_toggle_commands(command_char):
    """Handles toggle commands (. , ;)."""
    global show_row_cursor, show_line_cursor
    if command_char == '.':
         show_row_cursor = not show_row_cursor
    elif command_char == ';':
         show_line_cursor = not show_line_cursor

def handle_undo_repeat_commands(command_char):
    """Handles undo and repeat commands (u, r). Returns True if repeat was handled."""
    global buffer, cursor_row, cursor_col, show_line_cursor, show_row_cursor
    global undo_stack, last_modifying_command
    if command_char == 'u':
        if undo_stack:
            (buf, row, col, show_line, show_row, last_cmd) = undo_stack.pop()
            buffer = buf
            cursor_row = row
            cursor_col = col
            show_line_cursor = show_line
            show_row_cursor = show_row
            last_modifying_command = last_cmd
        return False
    elif command_char == 'r':
         if last_modifying_command:
             cmd, cmd_args = last_modifying_command
             run_command(cmd, cmd_args)
             return True
         return False

def handle_misc_commands(command_char):
    """Handles miscellaneous commands (?, s, q). Returns status."""
    global help_text
    if command_char == '?':
        print(help_text.strip())
        return "handled_no_display"
    elif command_char == 's':
        return "ok"
    elif command_char == 'q':
        return "quit"
    return "unknown"

# --- Command Execution Dispatcher ---

def run_command(command_char, args=None):
    """Executes a single editor command by dispatching to handlers.

    Args:
        command_char: The command character (e.g., 'h', 'i', 'dw').
        args: Optional arguments for the command (e.g., text for 'i'/'a').

    Returns:
        False if the command is 'q' (quit), "unknown" if the command is not recognized,
        True otherwise to continue the main loop.
    """
    original_command_char = command_char
    original_args = args

    motion_cmds = ('h', 'j', 'k', 'l', '^', '$', 'w', 'b')
    edit_cmds = ('i', 'a', 'x', 'dw', 'dd', 'o', 'O')
    yank_paste_cmds = ('yy', 'p', 'P')
    toggle_cmds = ('.', ';')
    undo_repeat_cmds = ('u', 'r')
    misc_cmds = ('?', 's', 'q')

    is_modifying_cmd = command_char in motion_cmds or \
                       command_char in edit_cmds or \
                       command_char in yank_paste_cmds or \
                       command_char in toggle_cmds

    if is_modifying_cmd:
        save_state_for_undo()

    needs_final_validation = True
    command_handled = True
    return_value = True

    if command_char in motion_cmds:
        needs_final_validation = handle_motion_commands(command_char)
    elif command_char in edit_cmds:
        handle_edit_commands(command_char, args)
    elif command_char in yank_paste_cmds:
        handle_yank_paste_commands(command_char)
    elif command_char in toggle_cmds:
        handle_toggle_commands(command_char)
    elif command_char in undo_repeat_cmds:
        was_repeat = handle_undo_repeat_commands(command_char)
        needs_final_validation = not was_repeat
    elif command_char in misc_cmds:
        misc_status = handle_misc_commands(command_char)
        if misc_status == "quit":
            return_value = False
        elif misc_status == "handled_no_display":
            command_handled = "no_display"
        needs_final_validation = False
    else:
        command_handled = False
        return_value = "unknown"
        needs_final_validation = False

    if needs_final_validation:
        validate_cursor()

    if is_modifying_cmd:
        save_last_command(original_command_char, original_args)

    if not command_handled:
        return "unknown"
    elif command_handled == "no_display":
        return True
    else:
        return return_value

# --- Main Editor Loop ---

def run_editor():
    """Main editor loop: reads commands, executes them, and displays the buffer."""
    while True:
        try:
            print(">", end="", flush=True)
            try:
                cmd_input = input()
            except EOFError:
                break

            if not cmd_input:
                continue

            command_char = cmd_input[0]
            args = None

            if cmd_input == 'dw': command_char = 'dw'
            elif cmd_input == 'yy': command_char = 'yy'
            elif cmd_input == 'dd': command_char = 'dd'
            elif len(cmd_input) > 1:
                if command_char not in ('i', 'a'):
                    continue
                else:
                    args = cmd_input[1:]
            elif command_char in ('i', 'a'):
                continue

            continue_running = run_command(command_char, args)

            if continue_running is False:
                break
            elif continue_running == "unknown":
                pass
            else:
                if command_char != '?':
                     display_editor()

        except EOFError:
             break

# --- Program Entry Point ---

if __name__ == "__main__":
    run_editor()
