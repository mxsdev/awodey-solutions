#import "../../../utils.typ"
#import utils: *

Let $P$ be a functor from the category $Cat$ to the category $Preorder$ as depicted in the diagram. 

#align(center)[#image("ex8_1.excalidraw.png", width:70%)]

Let P take each category $cal(C)$ to its corresponding preorder $P(cal(C))$. Define the action of $P$ on a functor $F: cal(C) to cal(D)$ on $F$'s object maps and morphism maps separately. Let $P$ take each object map $F_a: a to F a$ as the corresponding map in the preorder homomorphism $a to F a$, and let $P$ take each morphism map $F_f: f to F f$ to the corresponding map between relations $a<=b to F a <= F b$. 

We can check that $P$ satisfies the 3 properties definiting a functor. Observe that $P$ maps $F: cal(C) to cal(D)$ to  an element in $Hom_(Preorder)(P(cal(C)), P(cal(D)))$. To see that it preserves identity $P: 1_cal(C) to 1_(P(cal(C)))$, observe that it takes each identity morphism in the a category $1_a$ to $a <= a$ and each identity morphism map to the identity relation map. To see that it preserves composition, observe that $P(G after F) = P(G) after P(F)$, since objects inside categories are mapped to themselves and a relation morphism $a <= b to G after F a <= G after F a$ iff there is a composition of morphisms in $Cat$.

To show that $P$ is a one-sided inverse to the evident inclusion functor of preorders into categories, observe that while there is a bijection of objects, homsets of cardinality $>= 1$ get mapped to a homset of cardinality $1$, while empty homsets get mapped to empty homsets, so $P$ is necessarily lossy for homsets of cardinality $>1$, whereas the evident inclusion functor is faithful on homsets.

