#let cat(body) = $bold(upright(#body))$

#let Rel = cat("Rel")
#let Set = cat("Sets")
#let Monoid = cat("Monoids")
#let Mon = cat("Mon")
#let Poset = cat("Posets")
#let Cat = cat("Cat")
#let Grph = cat("Graph")

// TODO(mxsdev): why is this still slanted??
#let kolmogorov = $text("T", style: "normal")_0$
#let hausdorff = $text("T", style: "normal")_1$

#let opcat(body) = $#body^(text("op"))$
#let tuple(..args) = $lr(angle.l #(args.pos().join($,$)) angle.r)$

#let dom = $bold(op("dom"))$
#let ob = $op("ob")$