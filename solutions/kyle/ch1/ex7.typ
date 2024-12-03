#import "../../../utils.typ"
#import utils: *

+ #image("ex7_1.png")

  Define the functor $F: Set\/2 to Set times Set$ to map each object $F: f mapsto (f^(-1)(a), f^(-1)(b))$, and each morphism $F: h mapsto (h|_(f^(-1(a))), h|_(f^(-1(a))))$ as shown in the above diagram. To see how this has no inverse, we can construct an object in $Set times Set$ which cannot be mapped to by $F$. Consider two sets with a nonempty intersection, e.g. $A := {c, d}$ and $B := {c, d, e}$. Clearly these sets exist, and so their product $A times B$ exists in $Set times Set$. Assume that there exists an object $f$ in the slice category which $F$ maps to $A times B$. $f$ is a function in $Set$ $f: X to {a, b}$. Consider the two fibers of $f$, $f^(-1)(a)$ and $f^(-1)(b)$. The fibers of any function partition the domain, which in this case is $X$. In other words, $not exists x (x in f^(-1)(a) and x in f^(-1)(b))$. But $f^(-1)(a) = A$ and $f^(-1)(b) = B$, which were defined to have a nonempty intersection, so $f$ cannot exist, so $F$ has no inverse, so this is not an isomorphism of categories.

+ #image("ex7_2.png")
