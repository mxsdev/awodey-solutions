#import "../../../utils.typ"
#import utils: *

+ By definition, the composition of two relations is another relation, so composition is closed. It suffices to show the identity and associativity rules.

  For identity, let $1_A subset.eq A times A$ and $R subset.eq A times B$ for some sets $A$, $B$. Then $R compose 1_A$ is,

  $ { tuple(a, b) in A times B | exists a' (tuple(a, a') in 1_A and tuple(a', b) in R) } $

  Since $1_A$ is the identity relation, $a = a'$, so the set is equivalent to,

  $ { tuple(a, b) in A times B | tuple(a, b) in R } = R $

  The case for $1_A compose R$ follows similarly.

  For associativity, let $R subset.eq A times B$, $S subset.eq B times C$, and $T subset.eq C times D$ for sets $A, B, C, D$. Then,

  $ 
    T compose (S compose R) = &{tuple(a, d) in A times D | exists c ( tuple(a, c) in (S compose R) and tuple(c, d) in T )} \
                            = &{tuple(a, d) in A times D | exists c ( exists b (tuple(a, b) in R and tuple(b, c) in S) and tuple(c, d) in T )} \
                            = &{tuple(a, d) in A times D | exists c  exists b (tuple(a, b) in R and tuple(b, c) in S and tuple(c, d) in T } \
                            = &{tuple(a, d) in A times D | exists b  exists c (tuple(a, b) in R and tuple(b, c) in S and tuple(c, d) in T } \
                            = &{tuple(a, d) in A times D | exists b   (tuple(a, b) in R and exists c (tuple(b, c) in S and tuple(c, d) in T)) } \
                            = &{tuple(a, d) in A times D | exists b   (tuple(a, b) in R and tuple(b, d) in T compose S) } = (T compose S) compose R\
  $

+ $G(f)$ is clearly a subset of $G(A) times G(B) = A times B$, so it suffices to show identities and composition are preserved.

  For identities, let $iota_A : A -> A$ be the identity function on set $A$. Then,

  $ G(iota_A) = { tuple(a, iota_A (a)) in A times A | a in A } = { tuple(a, a) in A times A | a in A } = 1_A $

  For composition, let $f : A -> B$ and $g : B -> C$. Then,

  $
    G(g) compose G(f) = &{ tuple(a, c) in A times C | exists b (tuple(a, b) in G(f) and tuple(b, c) in G(g)) } \
                      = &{ tuple(a, c) in A times C | exists b (b = f(a) and c = g(b)) } \
                      = &{ tuple(a, c) in A times C | exists b (c = g(f(a))) } \
                      = &{ tuple(a, c) in A times C | c = g(f(a)) } \
                      = &{ tuple(a, c) in A times C | exists b (c = (g compose f)(a)) } = G(g compose f)
  $

+ Since $R^c subset.eq C(B) times C(A) = B times A$, morphisms are compatible with objects, so it suffices to show identities and composition are preserved.

  For identities, let $1_A : A -> A$ be the identity relation on set $A$. Then,

  $ tuple(a, a) in (1_A)^c <==> tuple(a, a) in 1_A $

  So $(1_A)^c = 1_A$.

  For composition, let $R subset.eq A times B$ and $S subset.eq B times C$. Then,

  $
    tuple(a, c) in (S compose R)^c &<==> tuple(c, a) in S compose R \
                                   &<==> exists b (tuple(c, b) in R and tuple(b, a) in S) \
                                   &<==> exists b (tuple(a, b) in S^c and tuple(b, c) in R^c) \
                                   &<==> tuple(a, c) in R^c compose S^c
  $

  So $(S compose R)^c = R^c compose S^c$.