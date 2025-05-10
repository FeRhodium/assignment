'''
GOAL: balance between clean code, coding style and performance
    - Efficient logic can be developed to determine if two shapes overlap, intersect, 
        or if one is contained within the other, using one or two functions. 
        However, this logic tends to be complex and challenging 
        to read and follow. Additionally, testing the logic can be difficult, 
        particularly when it comes to evaluating the internal structure of the function.
    - Instead, break down the problem into smaller sub-problems, and solve each sub-problem
        one by one, using simple and easy-to-read functions, combining the proper usage of function
        parameters to enhance reusability and maintainability, and finally integrating them
        together to produce the solution to the original problem.
    - To acheive optimal efficiency and performance, analyses the code structure and flow to ensure the correct
        order of execution and avoid unnecessary calculations.

Process: 
    Pick a random polygon shape and a color
    Stretch the chosen polygon
    Repeatedly pick a random x,y position and try to fit the choosen shape so that
        1/ it doesn't touch any other shapes
        2/ it doesn't overlap with any other shapes
        3/ it doesn't hide inside another shape
'''
import turtle
import random
import time

# global constants
YOUR_ID = '124090066'
COLORS = ('green', 'blue', 'yellow', 'orange', 'purple', 'pink', 'brown')
SHAPE_FILE = 'shapes.txt'
SCREEN_DIM_X = 0.7  # screen width factor
SCREEN_DIM_Y = 0.7  # screen height factor
XY_SPAN = 0.8       # canvas factor 
XY_STEP = 10        # step size of x,y coordinates
MIN_DURATION = 5    
MAX_DURATION = 30
MIN_STRETCH = 1
MAX_STRETCH = 10
MIN_SEED = 1
MAX_SEED = 99

# global variables
g_shapes = []       # list of polygons displayed on canvas
g_screen = None
g_range_x = None
g_range_y = None

def get_shape_vertices(shape):
    """
    Get the actual vertices of a turtle shape and its bounding box.
    
    Args:
        shape (turtle.Turtle): The shape to get vertices for.
    
    Returns:
        tuple: (vertices, boundary) where:
            - vertices is a list of (x, y) tuples representing the shape's vertices
            - boundary is a tuple (min_x, max_x, min_y, max_y) representing the shape's boundary
    """
    # Get shape name, position, and size
    shape_name = shape.shape()
    x, y = shape.xcor(), shape.ycor()
    stretch_width, stretch_length = shape.shapesize()[0], shape.shapesize()[1]
    
    # Get the shape's polygon
    original_coords = g_screen._shapes[shape_name]._data
    
    # Transform each vertex based on shape's position and stretch
    transformed_vertices = []
    for vx, vy in original_coords:
        # Apply stretching and translation
        new_x = x + vx * stretch_length
        new_y = y + vy * stretch_width
        transformed_vertices.append((new_x, new_y))
    
    # Calculate the exact boundary from the vertices
    min_x = min(v[0] for v in transformed_vertices)
    max_x = max(v[0] for v in transformed_vertices)
    min_y = min(v[1] for v in transformed_vertices)
    max_y = max(v[1] for v in transformed_vertices)
    boundary = (min_x, max_x, min_y, max_y)

    return transformed_vertices, boundary

def boundaries_overlap(boundary1, boundary2):
    """
    Check if two boundaries overlap.
    
    Args:
        boundary1 (tuple): (min_x1, max_x1, min_y1, max_y1)
        boundary2 (tuple): (min_x2, max_x2, min_y2, max_y2)
    
    Returns:
        bool: True if the boundaries overlap, False otherwise.
    """
    min_x1, max_x1, min_y1, max_y1 = boundary1
    min_x2, max_x2, min_y2, max_y2 = boundary2
    
    # No overlap if one is to the left/right or above/below the other
    if max_x1 < min_x2 or max_x2 < min_x1:
        return False
    if max_y1 < min_y2 or max_y2 < min_y1:
        return False
    
    # If we reach here, there is overlap
    return True

def is_line_segments_intersect(line1, line2):
    """
    Check if two line segments intersect using parametric line equation.
    
    Args:
        line1 (tuple): ((x1, y1), (x2, y2)) first line segment
        line2 (tuple): ((x3, y3), (x4, y4)) second line segment
    
    Returns:
        bool: True if the line segments intersect, False otherwise
    """
    # Unpack coordinates
    (x1, y1), (x2, y2) = line1
    (x3, y3), (x4, y4) = line2
    
    # Calculate direction vectors
    dx1, dy1 = x2 - x1, y2 - y1
    dx2, dy2 = x4 - x3, y4 - y3
    
    # Calculate determinant (cross product of direction vectors)
    det = dx1 * dy2 - dy1 * dx2
    
    # Early return for parallel lines (det near zero)
    if abs(det) < 1e-10:
        return False
    
    # Calculate intersection parameters
    s = ((x3 - x1) * dy2 - (y3 - y1) * dx2) / det
    t = ((x3 - x1) * dy1 - (y3 - y1) * dx1) / det
    
    # Intersection exists if both parameters are in [0,1]
    return 0 <= s <= 1 and 0 <= t <= 1

def do_polygons_overlap(poly1, poly2):
    """
    Check if two polygons' edges intersect using efficient edge-pair testing.
    
    Args:
        poly1 (list): List of (x, y) vertices of first polygon
        poly2 (list): List of (x, y) vertices of second polygon
    
    Returns:
        bool: True if any edges intersect, False otherwise
    """
    # Define function to get polygon edges
    def get_edges(vertices):
        """Return list of edges from ordered vertices."""
        count = len(vertices)
        return [(vertices[i], vertices[(i + 1) % count]) for i in range(count)]
    
    # Get all edges from both polygons
    edges1 = get_edges(poly1)
    edges2 = get_edges(poly2)
    
    # Check each edge pair for intersection
    for edge1 in edges1:
        for edge2 in edges2:
            if is_line_segments_intersect(edge1, edge2):
                return True
                
    return False

def is_polygon_inside(vertices_to_check, container_polygon):
    """
    Check if any vertex of one polygon is inside another polygon.
    
    Uses a ray-casting algorithm to determine if points are inside the container polygon.
    First performs a bounding box check for quick rejection of points outside the box.
    
    Args:
        vertices_to_check (list): List of (x, y) vertices to check if inside container
        container_polygon (list): List of (x, y) vertices defining the container polygon
    
    Returns:
        bool: True if any vertex of vertices_to_check is inside container_polygon, False otherwise
    """
    # Calculate bounding box of container polygon for fast rejection
    min_x = min(v[0] for v in container_polygon)
    max_x = max(v[0] for v in container_polygon)
    min_y = min(v[1] for v in container_polygon)
    max_y = max(v[1] for v in container_polygon)
    
    # Check each vertex of the first polygon
    for test_point in vertices_to_check:
        x, y = test_point
        
        # Skip points outside the bounding box (optimization)
        if x < min_x or x > max_x or y < min_y or y > max_y:
            continue
        
        # Apply ray-casting algorithm to determine if point is inside polygon
        is_inside = False
        vertex_count = len(container_polygon)
        
        # Start with the last-to-first edge
        prev_x, prev_y = container_polygon[0]
        
        # Check all edges of the container polygon
        for i in range(vertex_count + 1):
            # Get current vertex, wrapping back to start when needed
            curr_x, curr_y = container_polygon[i % vertex_count]
            
            # Check if ray from point crosses this edge
            # Ray is horizontal to the right from test point
            if y > min(prev_y, curr_y) and y <= max(prev_y, curr_y) and x <= max(prev_x, curr_x):
                if prev_y != curr_y:
                    # Calculate x-coordinate of intersection with ray
                    ray_intersect_x = (y - prev_y) * (curr_x - prev_x) / (curr_y - prev_y) + prev_x
                
                # Flip inside/outside status if ray crosses edge
                if prev_x == curr_x or x <= ray_intersect_x:
                    is_inside = not is_inside
            
            # Move to next edge
            prev_x, prev_y = curr_x, curr_y
        
        # If this point is inside, no need to check other points
        if is_inside:
            return True
            
    # No vertices are inside the container polygon
    return False

def is_shape_overlapped_any(shape: turtle.Turtle, shapes: list[turtle.Turtle]) -> bool:
    '''
    Check if shape is overlapped with any of the shapes in the list using polygon-based
    collision detection that handles non-axis-aligned shapes.
    
    Args:
        shape (turtle.Turtle): The shape to check for overlap.
        shapes (list[turtle.Turtle]): List of shapes to check overlap with.
    
    Returns:
        bool: True if the shape overlaps with any other shape, False otherwise.
    '''
    if not shapes:
        return False
    
    # Get vertices and boundary of the current shape
    shape_vertices, shape_boundary = get_shape_vertices(shape)
    
    # Check against each shape in the list
    for other_shape in shapes:
        if shape is other_shape:  # Skip comparing with itself
            continue
        
        # Get vertices and boundary of the other shape
        other_vertices, other_boundary = get_shape_vertices(other_shape)
        
        # If bounding boxes don't overlap, shapes definitely don't overlap
        if not boundaries_overlap(shape_boundary, other_boundary):
            continue
        
        # Check for overlap, containment, or touching
        if do_polygons_overlap(shape_vertices, other_vertices):
            return True
        
        # Check if the point of one shape is inside the other
        if (is_polygon_inside(shape_vertices, other_vertices) or 
                is_polygon_inside(other_vertices, shape_vertices)):
            return True
    
    return False

############################################
################## template ################
############################################

def create_shape(shape:turtle.Turtle, color:str, sz_x:int = 1, sz_y:int = 1) -> turtle.Turtle:
    '''
    Create a turtle shape with specified parameters.
    
    Args:
        shape (turtle.Turtle): The base shape for the turtle.
        color (str): The color to set for the turtle.
        sz_x (int, optional): Horizontal stretch factor for the shape. Defaults to 1.
        sz_y (int, optional): Vertical stretch factor for the shape. Defaults to 1.
    
    Returns:
        turtle.Turtle: A configured turtle object with specified shape, color, and size.
    '''
    t = turtle.Turtle(shape)
    t.up()
    t.color(color)
    t.shapesize(sz_y, sz_x)
    return t

def get_random_home_position(range_x:list[int], range_y:list[int]) -> tuple[int,int]:
    '''
    Generates a random (x, y) coordinate tuple by sampling from 
    the provided x and y coordinate ranges.
    
    Args:
        range_x (list[int]): A list of possible x-coordinate values to sample from.
        range_y (list[int]): A list of possible y-coordinate values to sample from.
    
    Returns:
        tuple[int, int]: A randomly selected (x, y) coordinate pair.
    '''
    x = random.sample(range_x, 1)[0]
    y = random.sample(range_y, 1)[0]   
    return (x,y)

def place_a_random_shape(shape:turtle.Turtle, started:float, duration:int) -> None:
    '''
    Repeatedly tries to place the given shape at random coordinates 
    within the predefined canvas range.
    If the shape does not overlap with existing shapes, 
    it is added to the global shapes list and the screen is updated.
    
    Args:
        shape (turtle.Turtle): The turtle shape to be placed on the canvas.
        started (float): The timestamp when the placement process began.
        duration (int): The maximum time allowed for attempting to place the shape.
    '''
    while time.time() - started <= duration:
        x, y = get_random_home_position(g_range_x, g_range_y)
        shape.goto(x, y)
        if is_shape_overlapped_any(shape, g_shapes) is False:
            g_shapes.append(shape)
            g_screen.title(f'{YOUR_ID} - {len(g_shapes)}')
            g_screen.update()
            break

def fill_canvas_with_random_shapes(shapes:list[turtle.Turtle], colors:list[str], 
                         stretch_factor:int, duration:int) -> float:
    '''
    Fills the canvas with randomly positioned and colored shapes 
    within a specified time duration.
    
    Args:
        shapes (list[turtle.Turtle]): A list of available polygon shapes to choose from.
        colors (list[str]): A list of available colors to apply to the shapes.
        stretch_factor (int): The factor by which to stretch the shapes.
        duration (int): The maximum time allowed for placing shapes.
    
    Returns:
        float: The timestamp when the shape placement process started.
    '''
    started = time.time()
    while time.time() - started <= duration:
        shape = random.sample(shapes,1)[0]
        color = random.sample(colors,1)[0]
        turtle_obj = create_shape(shape, color, stretch_factor, stretch_factor)
        place_a_random_shape(turtle_obj, started, duration)

    return started


def import_custom_shapes(file_name:str) -> list[str]:
    '''
    Import custom turtle shapes from a file with predefined shape names and coordinates,
    where each line contains a shape name and its coordinates separated by a colon.
    
    Add each shape to the turtle screen and returns a list of imported shape names.

    Args:
        file_name (str): Path to the file containing custom shape definitions.

    Returns:
        list[str]: A list of names of the imported custom shapes.
    '''
    shapes = []
    with open(file_name, 'r') as f:
        for line in f.readlines():
            if line.find(':') == -1:
                continue
            name, coordinates = line.split(':')
            coordinates = eval(coordinates) # ok for internal use
            g_screen.addshape(name, coordinates)
            shapes.append(name)

    return shapes
    

def setup_canvas_ranges(w:int, h:int, span:float=0.8, step:int=10) -> tuple[list[int], list[int]]:
    '''
    Calculate valid coordinate ranges for canvas placement.
    
    Args:
        w (int): Canvas width.
        h (int): Canvas height.
        span (float, optional): Proportion of canvas to use. Defaults to 0.8.
        step (int, optional): Increment between coordinate values. Defaults to 10.
    
    Returns:
        tuple[list[int], list[int]]: A tuple containing x and y coordinate ranges, 
        centered at (0,0) within the specified canvas span.
    '''
    sz_w, sz_h = int(w/2*span), int(h/2*span)
    return range(-sz_w, sz_w, step), range(-sz_h, sz_h, step)

def setup_screen() -> turtle.Screen:
    '''
    Initialize and configure a turtle graphics screen with specific settings.

    Sets up a screen with auto-refresh disabled, predefined dimensions, 
    and logo mode orientation to prevent custom shape rotation.

    Returns:
        turtle.Screen: A configured turtle graphics screen ready for drawing.
    '''
    scrn = turtle.Screen()
    scrn.tracer(0)  # disable auto refresh
    scrn.setup(SCREEN_DIM_X, SCREEN_DIM_Y, starty=10)
    scrn.mode("logo") # heading up north to avoid rotation of custom shapes

    return scrn

def get_time_str(time_sec) -> str:
    '''
    Convert a timestamp in seconds to a formatted time string.

    Args:
        time_sec (float): The timestamp in seconds since the epoch.

    Returns:
        str: A formatted time string in "HH:MM:SS" format.
    '''
    struct_time = time.localtime(time_sec)
    return time.strftime("%H:%M:%S", struct_time)

def show_result(started:float, count:int) -> None:
    '''
    Display the final results of the drawing process, 
    including student ID, start and end times, duration, and shape count.
    
    Args:
        started (float): The timestamp when the drawing process began.
        count (int): The total number of shapes drawn during the process.
    
    Side effects:
        - Updates the screen title with ID, timing and count information
        - Changes screen background color to black
        - Prints student ID and shape count to console
    '''
    ended = time.time()	# end time 
    start_time = get_time_str(started)
    end_time = get_time_str(ended)
    diff = round(ended-started,2)

    g_screen.title(f'{YOUR_ID} {start_time} - {end_time} - {diff} - {count}')
    g_screen.bgcolor('black')
    print(f'{YOUR_ID},{count}')	# output your student id and shape count

def prompt(prompt:str, default:any) -> str:
    '''
    Prompts the user for input with a default value.
    
    Args:
        prompt (str): The input prompt message to display.
        default (any): The default value to return if no input is provided.
    
    Returns:
        str: The user's input, or the default value if no input is given.
    '''
    ret = input(f'{prompt} (default is {default}) >')
    return default if ret == "" else ret

def prompt_input() -> tuple[int,int,int,str]:
    '''
    Interactively prompt the user for drawing configuration parameters.
    
    Prompts for and validates user inputs for:
    - Minimum shape stretch value
    - Random seed for reproducibility
    - Drawing duration
    - Termination preference
    
    Returns:
        tuple[int,int,int,str]: A tuple containing (min_stretch, seed, duration, termination)
        with each value validated against predefined constraints.
    
    Raises:
        AssertionError: If any input value is outside its allowed range.
    '''
    min_stretch = int(prompt("Stretch Value", 1))
    assert MIN_STRETCH <= min_stretch <= MAX_STRETCH, \
        f"Stretch Value out of range {MIN_STRETCH} - {MAX_STRETCH}"
    
    seed = int(prompt("Random Seed", 1))
    assert MIN_SEED <= seed <= MAX_SEED, \
        f"Invalid Random Seed out of range {MIN_SEED} - {MAX_SEED}"
    
    duration = int(prompt("Duration (s)", 5))
    assert MIN_DURATION <= duration <= MAX_DURATION, \
        f"Invalid Duration out of range {MIN_DURATION} - {MAX_DURATION}"
    
    termination = prompt("Terminate", 'n')
    assert termination in ('y', 'n'), "Invalid Termination, must be y or n"

    return min_stretch, seed, duration, termination

def main() -> None:
    '''
    Main function to orchestrate the polygon drawing process.
    
    Configures the screen and canvas, imports custom shapes, prompts user for drawing parameters,
    initializes random seed, fills canvas with random shapes, and handles optional termination.
    
    Global variables are used to manage screen and drawing range state.
    
    Args:
        None
    
    Returns:
        None
    '''
    global g_screen, g_range_x, g_range_y
   
    g_screen = setup_screen()

    g_range_x, g_range_y = setup_canvas_ranges(g_screen.window_width(), 
                                               g_screen.window_height(),
                                               XY_SPAN, XY_STEP)
    
    shapes = import_custom_shapes(SHAPE_FILE)

    min_stretch, seed, duration, termination = prompt_input()

    random.seed(seed)

    started = fill_canvas_with_random_shapes(shapes, COLORS, min_stretch, duration)
    
    show_result(started, len(g_shapes))
    
    if termination == 'y':
        turtle.bye()

if __name__ == '__main__':
    main()
    g_screen.mainloop()
