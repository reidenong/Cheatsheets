#set page(
    columns: 2, 
    margin : 5%,
)
#set text(
    size: 10pt    
)
= CS1231 Reference Notes
== Chapter 1. Propositional Logic
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

== Chapter 3. Quantified Statements
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

== Chapter 5. Sets
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
\
For all sets $A$ and $B$, 
$
P(A sect B) = P(A) sect P(B)
$\
However, there exists $A$ and $B$ such that
$
P(A union B) eq.not P(A) union P(B)
$\

=== Proving with Sets
1. Work with the universal set $U$, convert to boolean algebra and then back to sets \ _eg. let $z in U$, then $z in$ {Given Set}_ ...
2. Work with set notation

== Chapter 6. Relations
*Definition of a relation:*\
A relation $R$ from a set $A$ to a set $B$ is a subset of the Cartesian product $A x B$.\ \
Given statement P(x,y), we have 
$
forall (x,y) in A times B,((x,y) in R <-> P(x, y)) \
forall x in A, forall y in B, (x R y <-> P(x, y))
$\

*Inverse Relations:*\
Given a relation $R$ from a set $A$ to a set $B$, the inverse relation $R^{-1}$ from $B$ to $A$ is defined as\
$
R^(-1) = {(y, x) in B times A : (x, y) in R} \
forall x in A, forall y in B, (x R y <-> y R^(-1) x)
$ \

*Domain, Co-Domain and Range:*\
Domain of $R$ is the set of all first elements of ordered pairs in $R$, ie. 
$
{x in A : exists y in B, (x, y) in R}
$\

Co-domain of $R$ is the set of all second elements of ordered pairs in $R$, ie. $B$\

Range of $R$ is the set of all second elements of ordered pairs in $R$, ie.
$
{y in B : exists x in A, (x, y) in R}
$\

*Compositions of Relations:*\
Relation starting in $R$ and ending in $S$ \
$eq$ Composition of $R$ with $S$\
$eq S compose R$\
$
forall x in A, forall z in C, (x bold((S compose R)) z <-> exists y in B, (x R y and y S z))
$

Composition is associative, ie. \
$
(S compose R) compose T = S compose (R compose T) = S compose R compose T
$\

Inverse of Composition is given as 
$
(S compose R)^(-1) = R^(-1) compose S^(-1)
$\

=== Properties of Relations
#table(
    columns: (30%, 70%),
    inset: 10pt,
    align: center,
    [Reflexive],[$forall x in A, x R x$],
    [Irreflexive],[$forall x in A, (x,x) in.not R $],
    [Symmetric],[$forall x in A, forall y in A, (x R y -> y R x)$],
    [Anti-Sym],[$forall x in A, forall y in A, ((x R y and y R x) -> x = y)$],
    [Asymmetric],[$forall x in A, forall y in A, (x R y -> y cancel(R) x)$\ ie. Anti-Sym and Irreflexive],
    [Transitive],[$forall x,y,z in A, ((x R y and y R z) -> x R z)$],
    [Equivalence],[Reflexive, Symmetric, Transitive],
    [Partial Order],[Reflexive, Anti-Sym, Transitive],
) \

*Transitive Closure:*\
The transitive closure of a relation $R$ on a set $A$ is the smallest transitive relation on $A$ that contains $R$.\

=== Partitions
A partition of a set $A$ is a collection of non-empty, mutually disjoint subsets of $A$ such that every element of $A$ is in exactly one of these subsets.\
\

$lambda$ is a partiton of set A if
1. $lambda$ is a set of non-empty subsets of $A$
2. Every element of $A$ is in exactly one element of $lambda$, ie.
$
forall x in A, exists S in lambda (x in S)\
forall x in A, forall S, T in lambda ((x in S and x in T) -> S = T)
$ \

=== Equivalence Relations
Relations induced by set partitions are equivalence relations.\ \
The set of all elements $x in A$ such that $A$ is \~-related to $x$ is known as the _equivalence class_ of $x$ and is denoted by $[x]$.\
$
[a] = {x in A : x ~ a} \ 
forall x in A, forall y in A, ([x] = [y] <-> x ~ y)
$

=== Order Relations
#table(
    columns: (30%, 70%),
    inset: 10pt,
    align: left,
    [Maximal Element],[$c$ is a maximal element iff $
    forall x in A, c prec.eq x -> c = x
    $\
    ie. no larger element exists],
    [Largest / Greatest/ Maximum Element],[$c$ is a largest element iff $
    forall x in A, x prec.eq c
    $\
    ie. all other elements are smaller],
    [Minimal Element],[$c$ is a minimal element iff $
    forall x in A, x prec.eq c -> c = x
    $\
    ie. no smaller element exists],
    [Smallest / Least / Minimum Element],[$c$ is a smallest element iff $
    forall x in A, c prec.eq x
    $\
    ie. all other elements are larger]
)

Definition of a Total Order:\
$
forall x,y in A, (x R y or y R x)
$\



























#set page(
    columns: 1, 
    margin : 5%,
)
#set text(
    size: 9pt    
)
= Appendix
*Laws of Boolean Algebra:*\
#table(
  columns: (36%, 32%, 32%),
  inset: 10pt,
  align: center,
    [Commutative Law],[$p and q eq q and p$],[$p or q eq q or p$],
    [Associative Law],[$p and (q and r) eq (p and q) and r$],[$p or (q or r) eq (p or q) or r$],
    [Distributive Law],[$p and (q or r) eq (p and q) or (p and r)$],[$p or (q and r) eq (p or q) and (p or r)$],
    [Identity Law],[$p and T eq p$],[$p or F eq p$],
    [Negation Law],[$p and ~p eq F$],[$p or ~p eq T$],
    [Double Negation Law],[$~(~p) eq p$],[],
    [Idempotent Law],[$p and p eq p$],[$p or p eq p$],
    [Universal Bound Law],[$p or T eq T$],[$p and F eq F$],
    [De Morgan's Law],[$~(p and q) eq ~p or ~q$],[$~(p or q) eq ~p and ~q$],
    [Absorption Law],[$p and (p or q) eq p$],[$p or (p and q) eq p$],
    [Negation of T and F],[$~T eq F$],[$~F eq T$],
    [Implication Law],[$p -> q eq ~p or q$],[],
    [Contrapositive Law],[$p -> q eq ~q -> ~p$],[],
    [Converse Law],[converse$(p -> q) eq q -> p$],[],
    [Inverse Law],[inverse$(p -> q) eq ~p -> ~q$],[]
)
#table(
    columns: (30%, 70%),
    inset: 10pt,
    align: center,
    [Consensus Theorem],
    [$(p and q) or (not p and r) or (q and r) eq (p and q) or (not p and r)$],
    [Proof],[$(p and q) or underline((q and r)) or (not p and r)  \ 
                eq (p and q) or underline({(not p or p) and (q and r)}) or (not p and r) \
                eq (p and q) or (p and q and r) or (not p and q and r) or (not p and r) \
                eq (p and q) or (not p and r) $]
)

#set page(
    columns: 1, 
    margin : 5%,
)
#set text(
    size: 9pt    
)
=== Laws of Set Algebra
#table(
    columns: (36%, 32%, 32%),
    inset: 10pt,
    align: center,
    [Commutative Law],[$A union B eq B union A$],[$A sect B eq. B sect A$],
    [Associative Law],[$A union (B union C) eq (A union B) union C$],[$A sect (B sect C) eq (A sect B) sect C$],
    [Distributive Law],[$A union (B sect C) eq (A union B) sect (A union C)$],[$A sect (B union C) eq (A sect B) union (A sect C)$],
    [Identity Law],[$A union emptyset eq A$],[$A sect U eq A$],
    [Complement Law],[$A union overline(A) eq U$],[$A sect overline(A) eq emptyset$],
    [Idempotent Law],[$A union A eq A$],[$A sect A eq A$],
    [Universal Bound Law],[$A union U eq U$],[$A sect emptyset eq emptyset$],
    [De Morgan's Law],[$overline(A union B) eq overline(A) sect overline(B)$],[$overline(A sect B) eq overline(A) union overline(B)$],
    [Absorption Law],[$A union (A sect B) eq A$],[$A sect (A union B) eq A$],
    [Double Complement Law],[$overline(overline(A)) eq A$],[],
    [Complement of Universal Set Law],[$overline(U) eq emptyset$],[],
    [Set Difference Law],[$A \\ B eq A sect overline(B)$],[]
)

=== Quick Power Set References
#table(
    columns: (50%, 50%),
    inset: 10pt,
    align: center,
    [$P(emptyset)$],[${ emptyset } = {{}}$],
    [$P({a})$],[${emptyset, {a}}$],
    [$P({a, b})$],[${emptyset, {a}, {b}, \ {a, b}}$],
    [$P({a, b, c})$],[${emptyset, {a}, {b}, {c}, \ {a, b}, {a, c}, {b, c}, \ {a, b, c}}$],
    [$P({a, b, c, d})$],[${emptyset, {a}, {b}, {c}, {d}, \ {a, b}, {a, c}, {a, d}, {b, c}, {b, d}, {c, d}, \ {a, b, c}, {a, b, d}, {a, c, d}, {b, c, d}, \ {a, b, c, d}}$]
)
