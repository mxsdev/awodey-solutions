#import "../../../utils.typ"
#import utils: *
#import "@preview/fletcher:0.5.2" as fletcher: diagram, node, edge
In each case let denote by $G$ the graph and by $cat(C)(G)$ the free category on $G$. Since rules for composing paths and the objects of $cat(C)(G)$ are given by definition, we see it sufficing to only characterize the arrows of $cat(C)(G)$.

+ Clearly a path cannot have more than one edge, since $e$ is not compatible with itself under path composition. It follows that there are exactly three morphisms on $cat(C)(G)$:

  - $Hom_(cat(C)(G))(a, a) = {1_a}$
  - $Hom_(cat(C)(G))(b, b) = {1_b}$
  - $Hom_(cat(C)(G))(a, b) = {e}$
+ We claim that every path in $cat(C)(G)$ is alternating between $e$ and $h$. We prove this by induction on path length $n$.

  The case $n = 0$ is immediate. 
  
  Now suppose that the claim holds for paths of length $n$, and consider a path of length $n+1$, which by induction will be of the form,

  $
    p compose A
  $

  For some edge $p$ and path $A$ alternating in $e$ and $h$.

  If $A$ is empty, the result is immediate since $p$ must be $e$ or $h$.

  If $A$ starts with $e$, then the only option for $p$ is $h$ and the result follows. The case $A$ starting with $h$ is similar.

  Now that we know what all paths look like in $cat(C)(G)$, we can determine all the arrows like so:

  - $Hom_(cat(C)(G))(a, a) = { (h e)^n }_(n >= 0)$
  - $Hom_(cat(C)(G))(b, b) = { (e h)^n }_(n >= 0)$
  - $Hom_(cat(C)(G))(a, b) = { (e h)^n e }_(n >= 0)$
  - $Hom_(cat(C)(G))(b, a) = { (h e)^n h }_(n >= 0)$
+ Suppose there is a path of length 3, $p q r$. $s(p) = t(q)$ cannot be $c$ as that would leave no options for $p$. This means $s(q) = t(r)$ cannot be $b$ (this would force $t(q) = c$), which means $s(r)$ cannot be $a$ (this would force $t(r) = b$).

  Similarly, $t(r)$ cannot be $c$ as that would leave no options for $q$, which means $s(r)$ cannot be $b$ either.

  Finally $s(r)$ cannot be $c$ since there are no edges of source $c$.

  It follows that there are no paths of length 3, and in fact greater than 3 neither since those paths would have length-3 subpaths.

  From this we know that all paths are at most length 2, and a simple check shows that only the following are valid:

  - $Hom_(cat(C)(G))(a, a) = { 1_a }$
  - $Hom_(cat(C)(G))(b, b) = { 1_b }$
  - $Hom_(cat(C)(G))(a, b) = { e }$
  - $Hom_(cat(C)(G))(b, c) = { f }$
  - $Hom_(cat(C)(G))(a, c) = { g, f e }$
  - $Hom_(cat(C)(G))(c, c) = { 1_c }$

+ We claim that every path in $cat(C)(G)$ is of the form,

  $
    p compose A
  $

  Where $p$ is either an empty path or one of $f, g$, and $A$ is an alternating sequence of $e$ and $h$. We prove this by induction on path length $n$.

  The case $n = 0$ is immediate. 
  
  Now suppose that the claim holds for paths of length $n$, and consider a path of length $n+1$, which by induction will be of the form,

  $
    p_0 compose p compose A
  $

  For some edge $p_0$, $p$ as described above and path $A$ alternating in $e$ and $h$.

  If $p$ is empty, then the result is immediate since if $p_0$ is $f$ or $g$ it is directly of the needed form, and if its either $e$ or $h$ then the entire path is alternating.

  If $p$ is $f$, then $p_0$ must be an edge from $c$. This forces $p_0$ to be empty and the result follows. The case $p = g$ is similar.

  Now that we know what all paths look like in $cat(C)(G)$, we can determine all the arrows like so:

  - $Hom_(cat(C)(G))(a, a) = { (h e)^n }_(n >= 0)$
  - $Hom_(cat(C)(G))(b, b) = { (e h)^n }_(n >= 0)$
  - $Hom_(cat(C)(G))(a, b) = { (e h)^n e }_(n >= 0)$
  - $Hom_(cat(C)(G))(b, a) = { (h e)^n h }_(n >= 0)$
  - $Hom_(cat(C)(G))(b, c) = { f (e h)^n }_(n >= 0)$
  - $Hom_(cat(C)(G))(a, c) = { f (e h)^n e }_(n >= 0) union { g (h e)^n }_(n >= 0)$
  - $Hom_(cat(C)(G))(c, c) = { 1_c }$

  And all other hom-sets are empty.