#import "../../../utils.typ"
#import utils: *
If $F$ is a functor from $cat(C) -> cat(D)$, let $P(F)$ coincide with the action of $F$ on objects.

Then if $C <= C'$ in $P(cat(C))$, there is some morphism $f : A -> B$ by definition. Then $F(f)$ is a morphism from $F(A) -> F(B)$ in $cat(D)$ by functorality, so $F(A) <= F(B)$ in $P(cat(D))$. It follows that $P(F)$ is order-preserving, so this mapping of morphisms is well-defined.

The identity functor $bb(1)_cat(C)$ gets mapped by $P$ to the identity set-function on $P(cat(C)) = ob cat(C)$, so identities are carried to identities.

If $F : cat(C) -> cat(D)$ and $G : cat(D) -> cat(E)$, then $P(G dot F)$ goes to the set-function composition of $F$ and $G$ on objects, which is exactly $P(G) compose P(F)$, so composition is preserved.

Finally to show that $P$ is a one-sided inverse let $I : Preorder -> Cat$ be the inclusion functor regarding pre-orders as categories. Consider the category $P(I(X))$: its objects are the objects of $I(X)$, which are the objects of $X$, and we have,

$ a <=_(P(I(X))) b <==> Hom_(I(X))(a, b) != emptyset <=> a <=_X b $

So that the two pre-orders, $X$ and $P(I(X))$, are equal.

Finally if $f$ is an order-preserving map $X -> Y$, both $I$ and $P$ preserve $f$'s action on objects by definitions, so $P(I(f)) = f$.