#import "../../../utils.typ"
#import utils: *

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

  Then there exists a unique monoid homomorphism $macron(f) : M(A) arrow N$ such that \ $|macron(f)| compose i = f$.


  Our first goal is to determine what the functor $M$ will do to an arbitrary function. Let $A, B$ be arbitrary sets, and let $f^*: A arrow B$ be an arbitrary function. Let $M(A)$ and $M(B)$ be the free monoids of those sets, and let $i_A$ and $i_B$ be the canonical injections from $A$ and $B$ into the underlying sets of their respective free monoids. We can define a composite function $f: A arrow |M(B)|$ to be $f := i_B compose f^*$. By the UMP, we know that, because there is a function $f: A arrow |M(B)|$, there exists a unique homomorphism $macron(f): M(A) arrow M(B)$ such that $|macron(f)| compose i_A = f$. Thus we have 2 commutative triangles (as shown below), so the entire square in $Set$ commutes.

  #align(center)[#image("ex11_2.excalidraw.png", width:40%)]

  But this still doesn't answer our question, what does M do to $f^*$? In order to be a functor, $M$ must map $f^*$ to a morphism that preserves the domain and codomain under the functor. That is, $M : (f: A arrow B) |-> (M f: M(A) arrow M(B))$ But as we said, above, there is a unique morphism $macron(f): M(A) arrow M(B)$, so it must be the case that $M: f^* |-> macron(f)$

    #align(center)[#image("ex11_3.excalidraw.png", width:40%)]

    To check that $M$ is a functor it suffices to check for preservation of identity and composition. The identity function $1_A$ gets mapped to the identity monoid homomorphism. 
    
    The composition of two arbitrary functions $g compose f$ is shown in the commutative diagram:

    #align(center)[#image("ex11_4.excalidraw.png", width:70%)]

    Here we have defined $g := i_C compose g^*$. By the UMP of $M(B)$, we know the existance and uniqueness of $macron(g)$. Let $h^*$ be defined to be the composite $g^* compose f^*$, and $h : A arrow |M(C)| := i_c compose h^*$. By the UMP of $M(A)$ we also know that because there is a function $h : A arrow |M(C)|$, there exists a unique homomorphism $macron(h): M(A) arrow M(C)$ such that $|macron(h)| compose i_A = h$. But this $macron(h)$ is exactly where $M$ sends $h^*$, and as it is the unique morphism from $M(A) arrow M(B)$, it must equal $macron(g) compose macron(f)$. So functoral composition is satisfied.