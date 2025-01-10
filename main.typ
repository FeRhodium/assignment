#let content(title, content) = [
	#set page(
		paper: "a4",
		header: [
			#h(1fr) Zhiheng CHEN 124090066
			],
		numbering: "1"
	)
	#align(center, text(17pt)[
		*#title* \ 
	])
	#align(center, text(12pt)[
		Zhiheng CHEN 124090066\
		#datetime.today().display("[day padding:none] [month repr:short] [year]")
	])
	#content
]

