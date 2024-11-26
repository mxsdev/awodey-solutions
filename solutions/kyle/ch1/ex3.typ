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
  1_A = g compose f \
  1_B = f compose g \
$]

+ In *Sets*, a bijective function has a two sided inverse which composes to form the two identities on sets, so it is an isomorphism.

+ In *Monoids*, bijective homomorphisms are called isomorphisms, and they have the property that their composition maps each element in the monoid to itself, so this is the identity morphism.

+ In *Posets*, suppose we have two posets A and B, both containing the same elements ${c, d}$, but in $A$, $c <= d$ whereas in $B$, $d <= c$. Now a function which maps each element onto itself is a bijection, but it violates the ordering, so is not a morphism, which in *Posets* must be order preserving. In general, the isomorphisms in *Posets* are bijections on their sets, but the converse is false.
