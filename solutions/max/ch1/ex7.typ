#import "../../../utils.typ"
#import utils: *
Consider the object $({1}, {1})$ in $Set times Set$, and suppose it was the image of some function $f : X -> 2$ under $F$, so $F(f) = (f^(-1)(a), f^(-1)(b)) = ({1}, {1})$. 

$f^(-1)(a) sect f^(-1)(b) = emptyset$ by elementary set theory, but $f^(-1)(a) = {1}$ and $f^(-1)(b) = {1}$, so $f^(-1)(a) sect f^(-1)(b) = {1} sect {1} = {1}$. So $emptyset = {1}$, a contradiction. Thus $F$ is not surjective on objects and cannot be an isomorphism of categories.

We don't run into this problem for the one-element set $1 = {a}$ - here we can define an inverse functor $G : Set -> Set \/ 1$ that maps each set $X$ to the unique function $X -> 1$ and acts identically on functions. It is straight-forward to show that this is functorial and a two-sided inverse to $F$ defined analogously as with $2$.