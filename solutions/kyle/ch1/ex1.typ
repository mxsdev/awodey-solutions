#import "../../../utils.typ"
#import utils: *
#import "@preview/commute:0.2.0": node, arr, commutative-diagram
// Library Documentation: https://gitlab.com/giacomogallina/commute
// Interactive Editor Documentation: https://github.com/EricWay1024/tikzcd-editor



+ For $Rel$ to be a category, it must satisfy: 
  -  Composition. For all morphisms $f$ and $g$ where $"cod" f = "dom" g$, their composition $g compose f$ must exist.
  - Associativity. $h compose (g compose f) = (h compose g) compose f$
  - Identity. For all objects, the identity morphism $1_A$ must exist and must satisfy #align(center)[$forall f: A arrow B$, $f compose 1_A = f = 1_B compose f$]

  Composition in $Rel$ is defined

  #align(center)[$ S compose R := {⟨ a, c ⟩ in A times C | exists b angle.l a, b angle.r in R and angle.l b, c angle.r in S }$]

  // https://t.yw.je/#N4Igdg9gJgpgziAXAbVABwnAlgFyxMJZABgBpiBdUkANwEMAbAVxiRAEEQBfU9TXfIRQBGclVqMWbAELdeIDNjwEiAJjHV6zVohABhbuJhQA5vCKgAZgCcIAWyRkQOCElETtbAEpyrth4juLkjqHlK6AMqGXEA
  #align(center, commutative-diagram(
    node((0, 0), [$A$]),
    node((0, 1), [$B$]),
    node((0, 2), [$C$]),
    arr((0, 0), (0, 1), [$R$]),
    arr((0, 1), (0, 2), [$S$]),
  ))

  Identity is defined

  #align(center)[$ 1_A := {angle.l a, a angle.r in A times A | a in A} $]

  To show associativity, suppose we have relations in the diagram below:
  // https://t.yw.je/#N4Igdg9gJgpgziAXAbVABwnAlgFyxMJZABgBpiBdUkANwEMAbAVxiRAEEQBfU9TXfIRQBGclVqMWbAELdeIDNjwEiAJjHV6zVohABhOXyWCiAZg0TtbACLdxMKAHN4RUADMAThAC2SMiBwIJFFLKV0AJUMQTx9g6kCkdVCdEABlKJjfRCSExHNktgAVOy4gA
  #align(center, commutative-diagram(
    node((0, 0), [$A$]),
    node((0, 1), [$B$]),
    node((0, 2), [$C$]),
    node((0, 3), [$D$]),
    arr((0, 0), (0, 1), [$R$]),
    arr((0, 1), (0, 2), [$S$]),
    arr((0, 2), (0, 3), [$T$]),
  ))

  #align(center)[$
  T compose (S compose R) & = T compose {⟨a, c⟩ | exists b ⟨a, b⟩ and ⟨b, c⟩} \
    &= {⟨a, d⟩ | exists b (⟨a, b⟩ and ⟨b, c⟩) and exists c (⟨b, c⟩ and ⟨c, d⟩)} \ 
    &= {⟨b, d⟩ | exists c ⟨b, c⟩ and ⟨c, d⟩} compose R \ 
    &= (T compose S) compose R
  $]

  This shows associativity. Intuitively, the above proof shows that there must be at least one element $b in B $ which bridges the gap between $A$ and $C$, and there must be at least one element $c in C$ which bridges the gap between $B$ and $D$. However, these two bridges don't need to meet in the middle.

  To show identity we insert the definition of identity into the definition of composition.

  #align(center)[$
  R compose 1_A &= {⟨a, b⟩ | exists a in A (⟨a, a⟩ in 1_A and ⟨a, b⟩ in R)} \
                &= {⟨a, b⟩ | exists a in R ⟨a, b⟩)}                             &&"Because" forall a, ⟨a, a⟩ in 1_A \
                &= R
  $]

  #align(center)[$
  1_B compose R &= {⟨a, b⟩ | exists b in B (⟨b, b⟩ in 1_B and ⟨a, b⟩ in R)} \
                &= {⟨a, b⟩ | exists a in R ⟨a, b⟩)}                             &&"Because" forall b, ⟨b, b⟩ in 1_B \
                &= R
  $]

  Because composition satisfies identity and associativity, $Rel$ is a category.

+ To show that there is a functor $G: Set arrow Rel$, just consider that a function is a particular kind of relation, so any morphisms in $Set$ are automatically morphisms in $Rel$; they can be transported over exactly as they are. The same is not true in the other direction $H: Rel arrow Set$, since some relations are not functions.

+ The functor $C: opcat(Rel) arrow Rel$ takes sets to themselves, identity arrows to themselves, and each relation $C: tuple(a, b) |-> tuple(b, a)$. The two properties of functorality are preservation of composition and identity, and $C$ satisfies both, it is a functor.