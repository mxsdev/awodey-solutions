#import "../../../utils.typ"
#import utils: *
#import "@preview/fletcher:0.5.2" as fletcher: diagram, node, edge
Consider the category $opcat((opcat(cat(C)) \/ opcat(C)))$. It has as objects maps $opcat(f) : opcat(X) -> opcat(C)$ in $opcat(cat(C))$, and as morphisms maps $opcat(g)$ satisfying,

$
  #diagram(
    $opcat(X) edge("d", opcat(h), ->) edge(opcat(f), ->) & opcat(C) \ opcat(Y)$,
    edge("ur", $opcat(f')$, "->", label-side: right)
  )
$

Which "unravels" (by reversing arrows) to the following equivalent diagram in $cat(C)$,

$
  #diagram(
    $X edge("d", h, <-) edge(f, <-) & C \ Y$,
    edge("ur", $f'$, "<-", label-side: right)
  )
$

So we find that the category $opcat((opcat(cat(C)) \/ opcat(C)))$ is nothing more than the category of maps $f$ with domain $C$, and morphisms $h : Y -> X$ satisfying the above diagrams. This is precisely what we would expect from a "coslice" category $C \/ cat(C)$.