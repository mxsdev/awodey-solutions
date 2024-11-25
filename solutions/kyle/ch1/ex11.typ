
+ Here we assume the free monoid functor is the Kleene star operation. 
  #align(center)[#image("ex11.excalidraw.png", width:40%)]
  Our goal is to show that $M$ is a functor. Fuctorality requires preservation of identity and composition. $M$ maps $1_A$ to the identity homomorphism on the free monoid. Composition follows:

  #align(center)[$
    M (g compose f)(a_1 ... a_k) &= (g compose f)(a_1) dots (g compose f)(a_1) \
     &= g(f(a_1)) dots g(f(a_k)) \
     &= M(g) compose M(f) (a_1 ... a_k)
  $]

  Intuitively, the monoid homomorphism $M (g compose f)$ takes each letter in the monoid $M A$ and replaces it according to the composition function $g compose f$, which is the same as replacing them by $f$ first and then by $g$. So the monoid homomorphism mapped to from the composition of functions is the same as the composition of the two individual monoid homomorphisms.

+ Here we don't assume the free monoid functor is the Kleene star operation. Instead we assume the UMP: that given
  - $A$: a generating set.
  - $i : A arrow |M(A)|$, An arbitrary function $i$ mapping from the generating set to the (underlying set of the) free monoid
  - $f: A arrow |N|$, an arbitrary function $f$ mapping to the underlying set of an arbitrary monoid,

  Then there exists a unique monoid homomorphism $macron(f) : M(A) arrow N$ such that $|macron(f)| compose i = f$.

  