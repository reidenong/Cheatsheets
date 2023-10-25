#set page(
    columns: 2, 
    margin : 5%,
)
#set text(
    size: 10pt    
)
= CS1231 Reference Notes
== 1. Propositional Logic
Rules of Inference:\
#table(
  columns: (50%, 50%),
  inset: 10pt,
  align: left,
    [Modus Ponens],[$p -> q \ p \ therefore q$],
    [Modus Tollens],[$p -> q \ ~q \ therefore ~p$],
    [Generalization], [$p \ therefore p or q$],
    [Specialization],[$p and q \ therefore p$],
    [Conjunction],[$p \ q \ therefore p and q$],
    [Elimination],[$p or q \ ~p \ therefore q$],
    [Transitivity],[$p -> q \ q -> r \ therefore p -> r$],
    [Proof by Division into Cases],[$p or q \ p -> r \ q -> r \ therefore r$],
    [Contradiction],[$~p -> F \ therefore p$],
)

== 2. Quantified Statements
*Expressions of if-then statements:*\
#table(
    columns: (50%, 50%),
    inset: 10pt,
    align: center,
        [$r(x)$ sufficient condition for $s(x)$], [$r(x) -> s(x)$],
        [$r(x)$ necessary condition for $s(x)$], [$not r(x) -> not s(x) \ s(x) -> r(x)$],
        [$r(x)$ only if $s(x)$],[$r(x) -> s(x)$]
)

*Truth Set:* \
If $P(x)$ is a predicate and $x$ has domain $D$, the truth set of $P(x)$ is the set of all elements in $D$ that make $P(x)$ true.\
\

*Universal Statements:*\
$
forall x in D, Q(x)
$
where $D$ is the domain of $x$ and $Q(x)$ is a predicate. \
\

*Existential Statements:*\
$
exists x in D, Q(x)
$
where $D$ is the domain of $x$ and $Q(x)$ is a predicate.\
\

*Validity of Arguments:*\
An argument is valid if and only if the truth of its premises implies the truth of its conclusion.\
\

*Soundness of Arguments:*\
An argument is sound if and only if it is valid and all its premises are true.\
\

*Showing Invalidity of Arguments:*\
1. Show there exist a counterexample of predicates such that all premises are true but the conclusion is false.\

 - May be easier to work backwards, ie. find how the $therefore$ can be false before constructing premises

2. Boolean algebra
\

*Rule of Inference for Quantified Statements:*\
#table(
    columns: (50%, 50%),
    inset: 10pt,
    align: left,
        [Universal Instantiation], [$forall x in D, P(x)$ \ $therefore P(c)$ if $c in D$],
        [Universal Generalization], [$P(c)$ for every $c in D$ \ $therefore forall x in D, P(x)$],
        [Existential Instantiation], [$exists x in D, P(x)$ \ $therefore P(c)$ for some $c in D$],
        [Existential Generalization], [$P(c)$ for some $c in D$ \ $therefore exists x in D, P(x)$]
)\

*Proving Existential Statements $exists x in D, P(x)$:*\
1. Constructive proof to find a $x in D$
2. Constructive proof by giving directions to find such an $x in D$
\

*Disproving Universal Conditional Statement $forall x in D, P(x) -> Q(x)$:*\
1. Show negation is true by counterexample, 
ie. prove $exists x in D, P(x) and ~Q(x)$

== 3. Sets
*Set Builder Notation:*\
The set of all $x$ such that $P(x)$ is true is denoted by
$
A = {x in D | P(x)}
$

where $D$ is the domain of $x$ and $P(x)$ is a predicate.\

*Set Replacement Notation:*\
The set of all $x$ such that $P(x)$ is true is denoted by
$
A = {f(x) | x in D}
$
where $D$ is the domain of $x$ and $f(x)$ is a function.\

*Roster Notation:*\
Listing all elements, we have
$
A = {a, b, c, ...}
$

*Disjoint Sets:*\
Two sets $A$ and $B$ are disjoint if and only if they have no elements in common, ie. $A sect B = emptyset$.\

=== Power Sets
The power set of a set $P (A)$ is the set of all subsets of $A$.\
For a set $A$ with $n$ elements, $P(A)$ has $2^n$ elements.\






















#set page(
    columns: 1, 
    margin : 5%,
)
*Laws of Boolean Algebra:*\
#table(
  columns: (36%, 32%, 32%),
  inset: 10pt,
  align: center,
    [Commutative Law],[$p and q eq.triple q and p$],[$p or q eq.triple q or p$],
    [Associative Law],[$p and (q and r) eq.triple (p and q) and r$],[$p or (q or r) eq.triple (p or q) or r$],
    [Distributive Law],[$p and (q or r) eq.triple (p and q) or (p and r)$],[$p or (q and r) eq.triple (p or q) and (p or r)$],
    [Identity Law],[$p and T eq.triple p$],[$p or F eq.triple p$],
    [Negation Law],[$p and ~p eq.triple F$],[$p or ~p eq.triple T$],
    [Double Negation Law],[$~(~p) eq.triple p$],[],
    [Idempotent Law],[$p and p eq.triple p$],[$p or p eq.triple p$],
    [Universal Bound Law],[$p or T eq.triple T$],[$p and F eq.triple F$],
    [De Morgan's Law],[$~(p and q) eq.triple ~p or ~q$],[$~(p or q) eq.triple ~p and ~q$],
    [Absorption Law],[$p and (p or q) eq.triple p$],[$p or (p and q) eq.triple p$],
    [Negation of T and F],[$~T eq.triple F$],[$~F eq.triple T$],
    [Implication Law],[$p -> q eq.triple ~p or q$],[],
    [Contrapositive Law],[$p -> q eq.triple ~q -> ~p$],[],
    [Converse Law],[converse$(p -> q) eq.triple q -> p$],[],
    [Inverse Law],[inverse$(p -> q) eq.triple ~p -> ~q$],[]
)
#table(
    columns: (30%, 70%),
    inset: 10pt,
    align: center,
    [Consensus Theorem],
    [$(p and q) or (not p and r) or (q and r) eq.triple (p and q) or (not p and r)$]
)