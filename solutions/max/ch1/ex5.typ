#import "../../../utils.typ"
#import utils: *
#import "@preview/fletcher:0.5.2" as fletcher: diagram, node, edge
For $U$, define $U(f) = dom f$ on objects. Then considering $g : f -> f'$ as a function $dom f -> dom f'$ defines the action on morphisms.

Since we define identities in the slice categories as identites on domains, identites are preserved. Similarly, since we define the composition in $cat(C) \/ C$ as the composition of the underlying functions on domains, it follows that $U$ preserves composition.

#align(center)[
  #stack(dir: ltr, spacing: 64pt,
    align(horizon,
      stack(dir: ltr, spacing: 16pt, 
        diagram(
          $a edge(f, ->) edge("d", 1_a, ->) & c \ a$,
          edge((0, 1), "ur", $f'$, "->", label-side: right),
        ), 
        align(horizon, $|->$),
        align(horizon, 
          diagram(
            $a edge("d", 1_a, ->) \ b$,
          ),     
        )
      ),
    ),

    stack(dir: ltr, spacing: 16pt, 
      diagram(
        $a edge(f, ->) edge("d", g, ->) & c \ b edge("d", h, ->) \ c$,
        edge((0, 1), "ur", $f'$, "->", label-side: right, label-sep: -3pt),
        edge((0, 2), "uur", $f''$, "->", label-side: right),
      ), 
      align(horizon, $|->$),
      align(horizon, 
        diagram(
          $a edge("d", g, ->) \ b edge("d", h, ->) \ c$,
        ),     
      )
    ),
  )
]

Now define $F$ on objects to take each morphism $f : a -> c$ to itself, and each morphism $g : f -> f'$ to $tuple(g, 1_C)$. Letting $f ->^g f' ->^g' f''$, we have,

$
  F(g') compose F(g) = tuple(g', 1_C) compose tuple(g, 1_C) = tuple(g' compose g, 1_C) = F(g' compose g)
$

Then the composition of functors $dom compose F$ has, for objects $f in ob cat(C) \/ C$,

$
  (dom compose F)(f) = dom  F (f )  = dom f = U(f)
$

And for morphisms $g : f -> f'$,

$
  (dom compose F)(g) = dom tuple(g, 1_C) = g = U(g)
$

