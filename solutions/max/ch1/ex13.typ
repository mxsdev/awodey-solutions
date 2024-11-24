#import "../../../utils.typ"
#import utils: *
Define a functor $overline((-)) : cat(C) -> overline(cat(C))$ on objects as sending $C -> overline(C)$ and on morphisms $g : C -> D$ to $overline(g) : overline(C) -> overline(D)$. It suffices to show that $overline((-))$ is a functor, is bijective on objects, and is bijective on $Hom$-sets.

For preservation of identity, $overline(1_A)$ acts by post-composition with the identity, and therefore is the set-functional identity $overline(A) -> overline(A)$; since composition occurs in $overline(cat(C))$ as set-function composition, $overline(1_A)$ is the identity in $overline(cat(C))$.

For functoral composition, if $f : A -> B$ and $g : B -> C$ in $cat(C)$, and if $h in overline(A)$, then,

$
  (overline(g) compose overline(f)) (h) = overline(g)(overline(f)(h))  = overline(g)(f compose h) = g compose (f compose h) = (g compose f) compose h = (overline(g compose f))(h)
$

So that $overline(g) compose overline(f) = overline(g compose f)$, i.e. $overline((-))$ preserves composition.

For bijectivity on objects, surjectivity is clear by definition since the objects are precisely the elements $overline(C)$ for $C in ob(cat(C))$. Injectivity is also clear since we can always recover the original object $C$ uniquely from the identity $1_C in overline(C)$, which could never be in any other $overline(D)$ for $D != C$.

For bijectivity on morphisms, surjectivity is again clear since every morphism is defined as $overline(g)$ for some $g in mor(cat(C))$. Now if $g : A -> B$ for objects $A, B$ in $cat(C)$, $overline(g)$ acts by post-composition with $g$ from $overline(A) -> overline(B)$. It follows that the original $g$ can be recovered uniquely as $overline(g)(1_A)$, so we also have injectivity.