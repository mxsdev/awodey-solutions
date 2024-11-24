#import "../../../utils.typ"
#import utils: *
#import "@preview/fletcher:0.5.2" as fletcher: diagram, node, edge
// For aid in formality, we take a "word" of a set $A$ to be a pair $(n, f)$ where $f : n -> A$

+ Let $f : A -> B$ and $g : B -> C$. Then,

  $
    M (g compose f)(a_1...a_k) = g(f(a_1))...g(f(a_n)) = M(g)(f(a_1)...f(a_n)) = M(g)(M(f)(a_1...a_n))
  $

  And, for the identity function $iota_A : A -> A$,

  $
    M (iota_A) (a_1...a_n) = iota_A (a_1)...iota_A (a_n) = a_1...a_n
  $

  So $M$ as defined is a functor.

+ Let $A, B in ob(Set)$ and $i_A : A -> |M(A)|$ and $i_B : B -> |M(B)|$ be the canonical maps from the UMP for $A, B$ respectively. Then for any set function $f : A -> B$, we can define $M(f) in Hom_Mon (M(A), M(B))$ as the unique monoid morphism making the following square commute by UMP:

  $
    #diagram(cell-size: 15pt,
    $|M(A)| edge(|M(f)|, ->) & |M(B)| \
      A edge(f, ->) edge("u", i_A, ->) & B edge("u", i_B, ->)$
    )
  $

  If $iota_A$ is the identity function $A -> A$, then the identity monoid morphism $I_A : M(A) -> M(A)$ coincides with the set identity function $|M(A)| -> |M(A)|$. Then the diagram below clearly commutes:

  $
    #diagram(cell-size: 15pt,
    $|M(A)| edge(|I_A| = iota_(M(A)), ->) & |M(A)| \
      A edge(iota_A, ->) edge("u", i_A, ->) & A edge("u", i_A, ->)$
    )
  $

  So $I_A = M(iota_A)$ by uniqueness of the UMP.

  Finally for composition, suppose we have sets $A, B, C$ and $f : A-> B$, $g : B -> C$, then, we have:

  $
    #diagram(cell-size: 15pt,
    $|M(A)| edge(|M(f)|, ->) & |M(B)| edge(|M(g)|, ->) & |M(C)| \
      A edge(f, ->) edge("u", i_A, ->) & edge(g, ->) B edge("u", i_B, ->) & C edge("u", i_C, ->)$,
      edge((0, 1), (2, 1), $g compose f$, "->", bend: -30deg),
      edge((0, 0), (2, 0), $|M(g)| compose |M(f)| = |M(g) compose M(f)|$, "->", bend:  45deg),
    )
  $

  Since the inner two squares commute, so does the outer square. It follows by uniqueness of UMP that $M(g) compose M(f) = M(g compose f)$.
