#import "../../../utils.typ"
#import utils: *
#import "@preview/commute:0.2.0": node, arr, commutative-diagram
// Library Documentation: https://gitlab.com/giacomogallina/commute
// Interactive Editor Documentation: https://github.com/EricWay1024/tikzcd-editor

In a category, isomorphisms between objects are a pair of morphisms between two objects A and B which compose to form the two identity morphisms. 

// https://t.yw.je/#N4Igdg9gJgpgziAXAbVABwnAlgFyxMJZABgBpiBdUkANwEMAbAVxiRAEEQBfU9TXfIRQBGclVqMWbAELdxMKAHN4RUADMAThAC2SMiBwQkoic1aIQakNQBGMMFCQBmYj3VbdiE4b237jxBdqejM2RTkuIA
#align(center, commutative-diagram(
  node((0, 0), [$A$]),
  node((0, 1), [$B$]),
  arr((0, 0), (0, 1), [$f$], curve: 30deg),
  arr((0, 1), (0, 0), [$g$], curve: 30deg),
))

#align(center)[$
  1_A = g after f \
  1_B = f after g \
$]

+ In *Sets*, a bijective function has a two sided inverse which composes to form the two identities on sets, so it is an isomorphism.

+ Our goal is to show that in $Monoid$, a morphism is iso iff it is bijective on sets.
  - $arrow$ Let $phi: A to B$ be an iso morphism. That is, it has a two sided inverse $psi$ such that $psi after phi = 1_A$ and $phi after psi = 1_B$. To be an inverse on monoids, it must be a bijection on the underlying sets.
  - $arrow.l$ Let $phi: A to B$ be a bijective monoid homomorphism.  Define $psi: B to A$ to be a map which sends $psi: phi(a) mapsto a$. Since $phi$ is a bijection on sets, this is well defined. To prove that it is also a monoid homomorphism, observe that it sends identities to identities, since $phi(e_A) = e_B$, so $psi: e_B mapsto e_A.$ To show it satisfies the homomorphism property, observe that $psi(phi(a_1) after phi(a_2)) = psi(phi(a_1 after a_2)) = a_1 after a_2 = psi(phi(a_1)) after psi(phi(a_2)).$ So indeed, $psi$ is a homomorphism, so it exists as a morphism in $Monoid$. To show that $psi$ is the two-sided inverse of $phi$, observe that $psi after phi (a) = psi(phi(a)) = a$, and $phi after psi (phi(a)) = phi(psi(phi(a))) = phi(a)$.  Since there exists a two sided inverse, $phi$ is an isomorphism.

+ In $Poset$, suppose we have two posets A and B, both containing the same elements ${c, d}$, but in $A$ there is no relation between $c$ and $d$, whereas in $B$, $c <= d$. Define a functor $F$ which maps each element to itself. This is clearly bijective on sets. It is a homomorphism, because it preserves the existing relations $c <= c$ and $d <= d$. However, $F$ has no inverse, since the relation $c <= d$ must be mapped to $Hom_A (c, d)$, which is empty. Since we have a bijective homomorphism with no inverse in $Poset$, the isomorphisms are not the same as the bijective homomorphisms.
