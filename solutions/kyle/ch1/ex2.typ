#import "../../../utils.typ"
#import utils: *
#import "@preview/commute:0.2.0": node, arr, commutative-diagram
// Library Documentation: https://gitlab.com/giacomogallina/commute
// Interactive Editor Documentation: https://github.com/EricWay1024/tikzcd-editor
// 
For there to be an isomorphism of categories there must exist a two functors $F$ and $G$ between them which compose to form the identity functors for each category. For this to happen, the objects and the morphisms must stand in one-to-one correspondence between the categories.

+ $Rel tilde.equiv opcat(Rel)$.  This is an isomorphism, since we can use the functor $C$ from exercise 1. It is equal to its inverse. That is, $C compose C = 1_Rel.$

+ $Set tilde.nequiv opcat(Set)$. Certainly any such functor cannot map sets to themselves. Because suppose we had a function $f: emptyset arrow A$. This is a function in *Sets*, but there are no functions $A arrow emptyset$, so this morphism $f$ cannot be mapped anywhere in $opcat(Set)$. But is there some other mapping that could exist? No, because the only candidate would be to swap the initial and terminal objects with each other, but there is only one $emptyset$ and there are many singleton sets, so any such composition of functors would be unable to map a particular singleton back to itself.

+ $cal(P)(X) tilde.equiv opcat(cal(P)(X))$. Let $F$ be a functor that maps each subset of $X$ to its complement. When composed with itself, this is $1_(cal(P)(X))$. For any two subsets $A$ and $B$ where $A <= B$, $B^C <= A^C$, so there is a one-to-one correspondence between morphisms in the opposite category.
