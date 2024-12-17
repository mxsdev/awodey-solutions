#import "../../../utils.typ"
#import utils: *
#import "@preview/commute:0.2.0": node, arr, commutative-diagram
// Library Documentation: https://gitlab.com/giacomogallina/commute
// Interactive Editor Documentation: https://github.com/EricWay1024/tikzcd-editor
// 
For there to be an isomorphism of categories there must exist a two functors $F$ and $G$ between them which compose to form the identity functors for each category. For this to happen, the objects and the morphisms must stand in one-to-one correspondence between the categories.

+ $Rel tilde.equiv opcat(Rel)$.  This is an isomorphism, since we can use the functor $C$ from exercise 1. Call its inverse $D$, which maps sets to themselves and reverses the order of the elements in the relation. That is, $D compose C = 1_Rel$ and $C compose D = 1_opcat(Rel)$. Since the two sided inverse for the functor exists, the categories are isomorphic.

+ $Set tilde.nequiv opcat(Set)$. There is an asymmetry in the initial and terminal objects of $Set$ we can use to show the nonexistance of an isomorphic functor. Isomorphic functors preserve the cardinality of homsets. As a consequence, they map initial objects to initial objects and terminal objects to terminal objects. Isomorphic functors must also bijectively map objects to objects. But $Set$ has one distinct initial object and many distinct terminal objects (i.e. all singleton sets), whereas $opcat(Set)$ has one distinct terminal object (i.e. $opcat(emptyset)$) and many initial objects. So no such bijection can exist between objects, so the functor cannot be constructed, so the two categories are not isomorphic.

+ $cal(P)(X) tilde.equiv opcat(cal(P)(X))$. Let $F$ be a functor that maps each subset of $X$ to its complement. The morphism in $cal(P)(X)$ is the subset relation $subset.eq$, which is the unique morphism between any two objects. Let $F$ map each $subset.eq$ to the unique $supset.eq$ iff it exists in $cal(P)(X)$. For any two subsets $A$ and $B$ where $A subset.eq B$, $F: A |-> A^C$,  $F: B |-> B^C$, and $F:subset.eq arrow supset.eq$. Every set in the powerset has a unique complement, so the functor's object mapping is bijective. For two arbitrary objects $A, B in cal(P)(X)$, there is a single unique morphism in the opposite category iff $A subset.eq B$ in $cal(P)(X)$. 
  - $arrow$ Suppose that $A subset.eq B$. Then $B^C subset.eq A^C$, so $opcat(B^C) supset.eq opcat(A^C)$, so $opcat(A) supset.eq opcat(B)$. 
  - $arrow.l$ Suppose that $opcat(A) supset.eq opcat(B)$. Then $opcat(B^C) supset.eq opcat(A^C)$, so $B^C subset.eq A^C$, so $A subset.eq B$
