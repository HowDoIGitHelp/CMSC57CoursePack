## Pigeonhole Principle

![pigeonholes](https://rubslecturenotes.herokuapp.com/static/md/Counting%20and%20Discrete%20Probability/media/pigeonholes.png)

Given a message-box of 9 pigeon holes, if there are 10 pigeons, it is guaranteed that at least one of the holes will contain more than one pigeons. This is a consequence of having more pigeons than holes. The most uniform distribution of pigeon to holes in this scenario would be about one pigeon to one hole. But since there are only 9 holes, the last pigeon will be placed into an already occupied hole. This is generalized by a mathematical principle (named after this scenario) called the pigeonhole principle (also called the Dirichlet drawer principle):

> Given $k$ sets and $k+1$ elements to be exhaustively assigned among the sets, at least one of the sets will contain more than one element.

The pigeonhole principle can be proven by demonstrating the truthfulness of its contrapositive:

> If none of the $k$ sets contain more than one element, then the maximum amount of the total elements would be $k$. This means that it cannot be true that there are $k$ sets and $k+1$ elements

The pigeonhole principle leads us to interesting truths about functions:

> A function $f$ with a domain with cardinality $k+1$ and a range with cardinality $k$ cannot be injective.
>
> >  If you visualize that the elements of the domain are the pigeon and the elements of the range are the holes, then it is guaranteed that there would be one element of the range that has two pre-images ($f(a_1)=b \land f(a_2)=b$ where $a_1\neq a_2$). Because of this $f$ cannot be injective.

The pigeonhole principle can also answer some interesting counting questions:

> What is the minimum number of people to guarantee that there will at least two people to share the same birthday?
>
> > Since there are 366 possible birthdays, there must at least 367 people.

The pigeonhole principle can be generalized if the number of pigeons is approximately some multiple of the number holes:

> If $n$ elements are to be exhaustively assigned into $k$ sets, then there is at least one set containing at least $\lceil \frac{n}{k} \rceil$.
>
> **Proof**
>
> The contrapositive can be demonstrated to be true:
>
> If no set contains at least $\lceil \frac{n}{k} \rceil$ elements ($S$ refers to the $k$ sets),
> $$
> \neg\exists S(|S|\geq\lceil \frac{n}{k} \rceil) = \forall S(|S|<\lceil \frac{n}{k} \rceil)
> $$
> Therefore the total number of elements cannot be greater than $k(\lceil \frac{n}{k} \rceil-1)$:
> $$
> n\leq k(\lceil \frac{n}{k} \rceil-1)\\
> \frac{n}{k}\leq\lceil \frac{n}{k} \rceil -1\\
> \frac{n}{k}+1\leq\lceil \frac{n}{k} \rceil
> $$
> This cannot be true if there are indeed $n$ elements and $k$ sets, therefore it cannot be that there are $n$ elements and $k$ sets.

The generalized pigeonhole principle can be used to solve the following questions:

- What is the minimum size of a group of people to guarantee that at least 4 people share the same birthday within the group.
- How many cards are needed to guarantee that there is a poker flush within the group of cards?
- In a span of 20 days, a monk prays for at least 1 hour per day. The maximum amount of praying the monk can do in 20 days is 25 hours. Show that it is guaranteed that in some number of consecutive days, the monk prays for a total of 14 hours.

The last example uses the pigeonhole principle in a subtle but elegant manner. Examples such as these doesn't obviously define the *pigeons* and the *holes* to apply the theorem.

If you think of each day as *hole* and the number of hours to pray as a *pigeon*, then you can present the problem this way: you have a sequence of praying hours called $\{f_i\}$ where each element $f_i$ corresponds to the number of hours prayed in day $i$. The elements of this sequence cannot be the *pigeons* since there is no guaranteed distinctness between them that would help answer the problem. Instead we create a sequence called $\{s_i\}$ where each element $s_i$ corresponds to the the sum of hours the monk has prayed from day $1$ until day $i$. (i.e. $s_1=f_1$, $s_2=f_1+f_2$, $s_3=f_1+f_2+f_3$, ... ,$s_{20}=f_1+f_2+\cdots+f_{20}$). Since this number is a strictly increasing sequence then these 20 integers are unique to each other, and $1\leq s_i\leq25$. By presenting the problem this way we can now describe the goal of our proof, to demonstrate that $s_j-s_i=14$ or $s_j=s_i+14$ (i.e. there exists a pair of sums where the difference is 14).

To complete the proof we create another sequence $\{t_i\}$ where each element $t_i=s_i+14$. Since this is just the same sequence as before but each with an extra $14$ hours each, the elements of $\{t_i\}$ is also strictly increasing and unique to each other. And also, $15\leq t_i\leq39$. Now we can imagine sequence of 40 numbers (lets call it $\{u_i\}$) containing the combined elements of $\{s_i\}$ and $\{t_i\}$.

This is where the pigeonhole principle applies, since there are 40 elements in $\{u_i\}$ and the elements of $\{u_i\}$ can only be from $[1,39]$, then there must be at least one integer who appears twice. Since $\{s_i\}$'s elements are distinct and $\{t_i\}$'s elements are distinct, repeated integers cannot appear on the individual sequences. Therefore there must be at least one instance of $s_j=t_i$. Which leads us to the goal $s_j=s_i+14$ demonstrating that, from $s_i$ to $s_j$ there are exactly $14$ hours of praying.