p(edward7, george5).
p(victoria,edward7).
p(alexandra, george5).
p(george6, elisabeth2).
p(george5, george6).
g(X,Y):-p(X,Z),p(Z,Y).

sentence --> noun, verb.
noun --> [bees].
noun --> [dogs].
verb --> [buzz].
verb --> [bite].

likes(john,mary).
likes(mary,sue).
likes(mary,tom).

g(x) = 2*x
g(X,Y) :- Y is 2*X.

f(0,1).
f(X,5) :- X>0.

speaks(allen,russian).
speaks(bob,english).
speak(mary,russian).
speaks(mary,english).
talkswith(Person1,Person2):-speaks(Person1,L),
speaks(Person2,L), Person 1 \= Person2.

fact(n) = if n=0 then 1 else n*fact(n-1)

factorial(0,1).
factorial(N, Result) :- N>0, M is N-1,
factorial(M,SubResult), Result is N*SubResult.

fib(0,1).
fib(1,1).
fib(N,R) :- N>1, N1 is N-1, N2 is N-2, fib(N1,R1),
fib(N2,R2), R is R1+R2.

f(0,1).
f(X,5) :- X>0.
f(0,1) :- !.
f(X,5) :-.

bsort(L,S) :- append(U,[A,B|V],L), B<A, !,
append(U,[B,A|V],M), bsort(M,S).
bsort(L,L).

s(X, Y) :- np(X, U), vp(U, Y).
np(X, Y) :- det(X, U), n(U, Y).
vp(X, Y) :- tv(X, U), np(U, Y).
vp(X, Y) :- iv(X, U).
det([the| Y], Y).
det([a| Y], Y).
det([an| Y], Y).
n([giraffe| Y], Y).
n([apple| Y], Y).
iv([dreams| Y], Y).
tv([eats| Y], Y).
tv([dreams| Y], Y).

s([the, giraffe, dreams], []).
s([the, giraffe, sleeps], []).
s(X, []).

s(s(NP, VP)) --> np(NP),vp(VP).
np(np(DET,N)) --> det(DET), n(N).
vp(vp(tv(TV),np(NP))) --> tv(TV),np(NP).
vp(vp(VP)) --> iv(VP).
det(det(the)) --> [the].
det(det(a)) --> [a].
det(det(a)) --> [an].
n(n(giraffe)) --> [giraffe].
n(n(apple)) --> [apple].
iv(iv(dreams)) --> [dreams].
tv(tv(eats)) --> [eats].
tv(tv(dreams)) --> [dreams].

s(Tree,[the,giraffe,dreams],X).
s(Tree,Sentence,[]).

det([le|X],X).
det([la|X],X).
n([souris|X],X).
n([chat|X],X).
v([mange|X],X).
v([trottine|X],X).

p(X,Y) :- sn(X,U), sv(U,Y).
sn(X,Y) :- det(X,U), n(U,Y).
sv(X,Y) :- v(X,Y).
sv(X,Y) :- v(X,U), sn(U,Y).