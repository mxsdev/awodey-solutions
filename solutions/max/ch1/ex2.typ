#import "../../../utils.typ"
#import utils: *

+ Consider the functor from problem 1-1(c). We can define in the same way a converse functor from $Rel -> opcat(Rel)$ taking each relation to its converse, and since converses are involutions, this is a two-sided inverse.

+ Suppose $F$ is an isomorphism from $Set -> opcat(Set)$. Then for any sets $A, B$, we would have that $Hom_(Set)(A, B) tilde.equiv Hom_(opcat(Set))(F(A), F(B)) tilde.equiv Hom_(Set)(F(B), F(A))$, i.e., $|A^B| = |F(B)^(F(A))|$.

  Letting $B$ be the null set, this would mean (for non-empty $A$), that $0 = |A^({})| = |F({})^(F(A))|$. Since there is only one null set, there is some non-empty $A$ such that $F(A)$ is also non-empty. But there is always at least one set-function from any set to a non-empty set, which is a contradiction.

+ We can define a functor $F : P(X) -> opcat(P(X))$ by mapping sets to their complement in $X$ and reversing inclusions. This is evidently functorial, and bijective on objects (since compliments are involutions) and on morphisms since $A subset.eq B <==> X - B subset.eq X - A$. It follows that $F$ is an isomorphism of categories.