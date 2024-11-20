#import "../../../utils.typ"
#import utils: *

+ This follows from elementary set theory, that if $f : A -> B$ and $g : B -> A$ are such that $g compose f$ and $f compose g$ are identities, then $f$ and $g$ are surjective and injective and thus bijective.

+ As a $Monoid$ morphism is a set function that preserves the monoid structure, any isomorphism is a bijection by (a). 

  Conversely, any bijection $f : M -> N$ between monoids $M, N$ satisfies,

  $ f(m dot m') = f(m) dot f(m') $

  For all $m, m' in M$. 
  
  Now if $n, n' in N$ so that $n = f(m)$ and $n' = f(m')$ (which we can assume by surjectivity of $f$), we have,

  $ f^(-1)(n dot n') = f^(-1)(f(m) dot f(m')) = f^(-1)(f(m dot m')) = m dot m'  = f^(-1)(n) dot f^(-1)(n') $

+ By elementary set theory, any homomorphism which is an isomorphism must have its categorical inverse be the set function inverse. So it suffices to find a bijective homomorphism whose set theoretic inverse is not a homomorphism.

  Let $cal(P)(2)$ be the poset of subsets of a 2-element set $2 = {a, b}$ under inclusion, and $cat(4)$ be the chain on four elements $1 <= 2 <= 3 <= 4$. Then we can define a function $f : cal(P)(2) -> cat(4)$ like,

  $
    {}     &|-> 1 \
    {a}    &|-> 2 \
    {b}    &|-> 3 \
    {a, b} &|-> 4
  $

  We have clearly exhibited an order preserving function which is also bijective. However, the inverse map is not bijective since in particular $2 <= 3$ but it is not the case that ${a} subset.eq {b}$. 