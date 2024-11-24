#import "../../../utils.typ"
#import utils: *
#set enum(numbering: "(i)")
- ($==>$) 
  Suppose we have an axiomatization of $cat(C)$ as objects and arrows. Then consider just the collection of arrows, with composition defined as in $cat(C)$. We show each axiom is satisfied.

  + If $(k compose g)$ and $f$ are composable then it is not hard to see that $g$ is composable with $f$ and $k$ is composable with $g compose f$. Then by associativity $(k compose g) compose f = k compose (g compose f)$.

  + If $k compose g$ and $g compose f$ are valid compositions then by considering the constraints on domains/codomains, we find that $k compose g compose f$ is valid.

  + For any arrow $g : A -> B$ we have $g compose 1_A = g$ and $1_B compose g = g$, so there exist such arrows.
- ($<==$)
  With the collection of arrows as $A$, and composability of $g, f$ as $g f$ when allowed, we will define a category $cat(C)$ as follows:

  - For objects, the collection of identity arrows $u$ so that $u f = f$ and $g u = u$ when such compositions are defined.
  - For morphisms from $u -> u'$, the collection of arrows $f$ so that $u f$ is defined and $f u'$ is also defined (and necessarily both equal to $f$).
  - For composition, $g compose f = g f$

  First of all, composition is well-defined since if $u f$, $f u'$, $u' g$, and $g u''$ are defined for identity arrows $u, u', u''$, then by axiom (ii) $f u' g$ is defined and equal to $(f u') g = f g$ since $f u' = f$.

  Now by axiom (iii), any identity $u$ has $u u'$ defined for some other identity $u'$. But then by the definition of identities, 

  $ u = u u' = u' $

  It follows that $u u = u$ so that $u$ is a morphism in $cat(C)$ from $u -> u$ with $u compose f = f$ and $g compose u = g$ for any $g, f$ where such equations are defined. It follows that each object $u$ has a two-sided identity in $cat(C)$.

  Associativity follows directly from axiom (i).
