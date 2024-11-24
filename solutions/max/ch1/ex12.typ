#import "../../../utils.typ"
#import utils: *
The condition on $overline(h)$ mandates that $overline(h)$ takes each node $a$, regarded as an element of $cat(C)(G)$, to the object $h(a)$ in $cat(D)$, and that it takes each edge $e$, regarded as a morphism of $cat(C)(G)$, to the edge representing the morphism $h(e)$ in $U(cat(D))$.

That this uniquely pins down $overline(h)$ follows from the fact that it is a graph homomorphism, since we know it on objects and by definition any morphism $p$ in $cat(C)(G)$ can be written as some finite sequence of edges,

$
  p = e_1 compose ... compose e_n
$

So that $overline(h)(p)$ is equal to $overline(h)(e_1) compose ... compose overline(h)(e_n)$ by the fact that $overline(h)$ is a functor.

Now since each non-identity morphism $p$ in $cat(C)(G)$ is uniquely expressible as some sequence of edges, it is no issue to define $overline(h)(p)$ _as_ $h(e_1) compose ... compose h(e_n)$, where we send the empty sequence to the identity morphism on $h(a)$, thus preserving identities, and we send objects to their image in $h$. 

Then for any non-empty composition-compatible paths $p = e_1...e_n$ and $q = s_1...s_m$, we have, 

$ 
  overline(h)(p compose q) = overline(h)(e_1...e_n compose s_1...s_m) &= overline(h)(e_1...e_n s_1...s_m)\ 
  &= h(e_1) compose ... compose h(e_n) compose h(s_1) compose ... compose h(s_m) \
  &= overline(h)(e_1...e_n) compose overline(h)(s_1...s_m) \
  &= overline(h)(p) compose overline(h)(q)
$

For empty paths then the preservation of composition is immediate.