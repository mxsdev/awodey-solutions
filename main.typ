#import "@preview/ctheorems:1.1.3": *

#import "chapters.typ"
#import chapters: Chapters

#import "./solutions/main.typ" as Solutions

#set heading(numbering: "1-1")
#set enum(numbering: "(a)", indent: 1em)

#show: thmrules.with(qed-symbol: $square$)

#let problem = thmbox(
  "theorem", 
  "Problem", 
  radius: 16pt,
  fill: rgb("#ffeeee"),
  base_level: 1,
).with(numbering: "1-1")

// table of contents
#outline()

#pagebreak()

#for (chapter_index, (exercises, name)) in Chapters.enumerate() [
  = #name

  #for (exercise_index, (content,)) in exercises.enumerate() [
    #{
      show heading: none
      heading(level: 2)[]
    }
    #problem[
      #content
    ]
    #for (solution-name, solutions) in Solutions.solutions {
      let chapter_solutions = solutions.at(chapter_index, default: none)

      if chapter_solutions != none {
        let exercise_solutions = chapter_solutions.at(str(exercise_index+1), default: none)

        if exercise_solutions != none {
          [ 
            #thmproof("proof", solution-name)()[
              #exercise_solutions 
            ]
          ]
        }
      }
    }

    #pagebreak()
  ]
]