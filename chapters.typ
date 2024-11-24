#import "utils.typ"
#import utils: *

#import "@preview/fletcher:0.5.2" as fletcher: diagram, node, edge

#let Chapters = (
  ( 
    name: "Categories",
    exercises: (
      (
        content: [ 
          The objects of $Rel$ are sets, and an arrow $A -> B$ is a relation from $A$ to $B$, that is, a subset $R subset.eq A times B$. The equality relation ${tuple(a, a) in A times A | a in A}$ is the identity arrow on a set $A$. Composition in $Rel$ is to be given by
          
          $ {tuple(a, c) in A times C | exists b (tuple(a, b) in R med \& med tuple(b, c) in S)} $

          for $R subset.eq A times B$ and $S subset.eq B times C$.

          + Show that $Rel$ is a category.
          + Show also that there is a functor $G : Set -> Rel$ taking objects to themselves and each function $f : A -> B$ to its graph,
            $ G(f) = {tuple(a, f(a)) in A times B | a in A } $
          + Finally, show that there is a functor $C : opcat(Rel) -> Rel$ taking each relation $R subset.eq A times B$ to its converse $R^c subset.eq B times A$, where,

          $ tuple(a, b) in R^c <=> tuple(b, a) in R $
        ],
      ),
      (
        content: [
          Consider the following isomorphisms of categories and determine which ones hold.

          + $Rel tilde.equiv opcat(Rel)$
          + $Set tilde.equiv opcat(Set)$
          + For a fixed set $X$ with a power set $P(X)$, as poset categories $P(X) tilde.equiv opcat(P(X))$ (the arrows in $P(X)$ are subset inclusions $A subset.eq B$ for all $A, B subset.eq X$).
        ],
      ),
      (
        content: [
          + Show that in $Set$, the isomorphisms are exactly the bijections.
          + Show that in $Monoid$, the isomorphisms are exactly the bijective homomorphisms.
          + Show that in $Poset$, the isomorphisms are _not_ the same as bijective homomorphisms.
        ]
      ),
      (
        content: [
          Let $X$ be a topological space and preorder the points by _specialization_: $x <= y$ iff $y$ is contained in every open set that contains $x$. Show that this is a preorder, and that it is a poset if $X$ is $kolmogorov$ (for any two distinct points, thre is some open set containing one but not the other). Show that the ordering is trivial if $X$ is $hausdorff$ (for any two distinct points, each is contained in an open set not containing the other).
        ]
      ),
      (
        content: [
          For any category $cat(C)$, define a functor $U : cat(C) \/ C -> cat(C)$ from the slice category over an object $C$ that "forgets about $C$." Find a functor $F : cat(C) \/C -> C^->$ to the arrow category such that $dom compose F = U$.
        ]
      ),
      (
        content: [
          Construct the "coslice category" $C \/ cat(C)$ of a category $cat(C)$ under an object $C$ from the slice category $cat(C) \/ C$ and the "dual category" operation $opcat(-)$.
        ]
      ),
      (
        content: [
          Let $2 = {a, b}$ be any set with exactly 2 elements $a$ and $b$. Define a functor $F : Set\/2 -> Set times Set$ with $F(f : X -> 2) = (f^(-1)(a), f^(-1)(b))$. Is this an isomorphism of categories? What about the analagous situation with a one-element set $1 = {a}$ instead of $2$?
        ]
      ),
      (
        content: [
          Any category $cat(C)$ determines a preorder $P(cat(C))$ by defining a binary relation $<=$ on the objects by 

          $ A <= B "if and only if there is an arrow" A -> B $

          Show that $P$ determines a functor from categories to preorders, by defining its effect on functors between categories and and checking the required conditions. Show that $P$ is a (one-sided) inverse to the evident inclusion functor of preorders into categories.
        ]
      ),
      (
        content: [
          Describe the free categories on the following graphs by determining their objects, arrows, and composition operations.

          + #box(width: 100%)[
            #align(center)[
              #diagram($a edge(e, ->) & b$)
            ]
          ]

          + #box(width: 100%)[
            #align(center)[
              #diagram(
                node((0, 0), $a$),
                edge($e$, "->", shift: 3pt),
                edge($f$, "<-", label-side: right, shift: -3pt),
                node((1, 0), $b$),
              )
            ]
          ]

          + #box(width: 100%)[
            #align(center)[
              #diagram($
                  a edge(e, ->) & b edge("d", ->, f) \
                  & c
                $, 
                edge((0, 0), "dr", $g$, "->", label-side: right),
              )
            ]
          ]

          + #box(width: 100%)[
              #align(center)[
                #diagram(cell-size: 3.5em,
                  node((0, 0), $a$),
                  edge("dr", $g$, "->", label-side: right),
                  edge($e$, "->", shift: 3pt),
                  edge($h$, "<-", label-side: right, shift: -3pt),
                  node((1, 0), $b$),
                  edge("d", $f$, "->", label-side: left),
                  node((1, 1), $c$),
                  node((2, 0), $d$)
                )
              ]
            ]
        ]
      ),
      (
        content: [
          How many free categories on graphs are there which have exactly six arrows? Draw the graphs that generate these categories.
        ]
      ),
      (
        content: [
          Show that the free monoid functor

          $ M : Set -> Mon $

          exists, in two different ways:

          + #box(width: 100%)[ Assume the particular choice $M(X) = X^*$ and define its effect

            $ M(f) : M(A) -> M(B) $

            on a function $f : A -> B$ to be

            $ M(f)(a_1 ... a_k) = f(a_1)...f(a_k), quad a_1,...a_k in A $
          ]

          + #box(width: 100%)[ 
            Assume only the UMP of the free monoid and use it to determine $M$ on functions, showing the result to be a functor.
          ]

          Reflect on how these two approaches are related.
        ]
      ),
      (
        content:  [
          Verify the UMP for free categories on graphs, defined as above with arrows being sequences of edges. Specifically, let $cat(C)(G)$ be the free category on the graph $G$, so defined, and $i :  G -> U(cat(C)(G))$ the graph homomorphism taking vertices and edges to themselves, regarded as objects and arrows in $cat(C)(G)$. Show that for any category $cat(D)$ and graph homomorphism $h : G -> U(cat(D))$, there is a unique functor

          $ overline(h) : cat(C)(G) -> cat(D) $

          with

          $ U(overline(h)) compose i = h, $

          where $U : Cat -> Grph$ is the underlying graph functor.
        ]
      ),
      (
        content: [
          Use the Cayley representation to show that every small category is isomorphic to a "concrete" one, that is, one in which the objects are sets and the arrows are functions between them.
        ]
      ),
      (
        content: [
          The notion of a category can also be defined with just one sort (arrows) . rather than two (arrows and objects); the domains and codomains are taken to be certain _arrows_ that act as units under composition, which is partially defined. Read about this definition in section I.1 of Mac Lane's _Categories for the Working Mathematician_, and do the exercise mentioned there, showing that it is equivalent to the usual definition.
        ]
      )
    )
  ),
  
  //   exercises: list()
  // ),
  // ( name: "Duality" ), 
  // ( name: "Groups and categories"),
  // ( name: "Limits and colimits"),
  // ( name: "Exponentials"),
  // ( name: "Naturality"),
  // ( name: "Categories of diagrams"),
  // ( name: "Adjoints" ),
  // ( name: "Monads and algebras" )
)