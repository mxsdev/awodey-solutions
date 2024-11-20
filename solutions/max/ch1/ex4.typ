#import "../../../utils.typ"
#import utils: *
Identity is clear since $x$ is trivially contained in every open set that contains itself.

For transitivity, suppose $x <= y$ and $y <= z$. Then if $U$ is open in $X$, $x in U => y in U => z in U$ so in particular $x in U => z in U$ so $x <= z$. It follows that specialization is at least a preorder.

If $X$ is $kolmogorov$, then suppose $x <= y$ and $y <= x$. If $x != y$, we can choose without loss of generality an open $U$ such that $x in U$ and $y in.not U$, but the latter is a contradiction since $x <= y$.

Finally if $X$ is $T_1$, and $x <= y$, $x != y$ creates a contradiction, because we can choose some open $U, V$ so that $x in U$, $y in V$ and $U sect V = emptyset$, so in particular $x in U$ and $y in.not U$, but by $x <= y$, $y in U$. So the order is trivial - the only pairs $x, y$ for which $x <= y$ are those where $x = y$.