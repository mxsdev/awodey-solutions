#import "../../../utils.typ"
#import utils: *

Let $P$ be a functor from the category $Cat$ to the category $Preorder$ as depicted in the diagram. 

#align(center)[#image("ex8_1.excalidraw.png", width:50%)]

Let P take each category $cal(C)$ to its corresponding preorder $P(cal(C))$. Given the functor $F: cal(C) to cal(D)$, define $P F$ to be identical to the action of $F$ on objects inside each category. Define its actions on functors in $cat(Cat)$ as follows. Let there be a relation $F a <= F b$ in $P(cal(D))$ if and only if $cal(D)(F a, F b)$ is nonempty.

To show that $P$ defines a functor, we check that it preserves identities and composition. 
- Identities. $P$ maps the identity functor $1_cal(C)$ to the identity order preserving map in the preorder. This is obvious for objects. For relations, it maps them to themselves iff they exist. 
- Compositition. Our goal is to show that $P (G after F) = P G after P F$. To do this we need to check both that composition of objects and composition of morphisms is preserved. Let $G: cal(C) to cal(D)$ and $F: cal(D) to cal(H)$, as in the diagram below. That $P F$ satisfies composition of object maps (i.e. $ob P(G after F) = ob P(G) after ob P(F)$) follows from functorality of functors in $Cat$. To show that composition of morphisms holds, we can follow an equivalence chain. 

#align(center)[#image("ex8_2.excalidraw.png", width:80%)]

$
P G after P F a <= P G after P F b &<=> P F a <= P F b      &&"by definition of a monotonic map" \
P F a <= P F b &<=> P a <= P b             && "by definition of a monotonic map" \
P a <= P b &<=> cal(C)(a,b) != emptyset        && "by definition of" P \
cal(C)(a,b) != emptyset &<=> cal(D)(F a, F b) != emptyset   && "by definition of functorality of" F \
cal(D)(F a, F b) != emptyset &<=> cal(H)(G after F a, G after F b) != emptyset && "by functorality of H" \
cal(H)(G after F a, G after F b) != emptyset &<=> P(G after F a) <= P (G after F b) && "by definition of P"
$

Since $a, b$ were arbitrary objects of $cal(C)$, this shows that $P G after P F = P (G after F).$

To show that $P$ is a one-sided inverse to the evident inclusion functor of preorders into categories, observe that while there is a bijection of objects, homsets of cardinality $>= 1$ get mapped to a homset of cardinality $1$, while empty homsets get mapped to empty homsets, so $P$ is necessarily lossy for homsets of cardinality $>1$, whereas the evident inclusion functor is faithful on homsets.

