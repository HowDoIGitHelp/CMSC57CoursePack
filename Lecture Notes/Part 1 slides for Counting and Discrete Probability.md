---
type: slide
theme: uncover
style: |
  img {
    display: block;
    margin: 0 auto;
  }
  section.imgh h4 {
    display: flex;
    justify-content: flex-start;
    align-self: flex-end;
  }
  section.imgh{
    display: flex;
    flex-direction: column-reverse;
    justify-content: flex-start;
  }
---

 # Counting and Discrete Probability 

---

##  Basic Rules of Counting
- Counting **combinations** of related things become more interesting
- Suppose you have a two **disjoint** sets of things called **$A$** and **$B$**, how do you count the number of **unique combinations** of the elements of **$A$** and **$B$**?

---

##  The Product Rule
Given a procedure with two tasks, if there are **$n_1$** ways to perform the first task and **$n_2$** ways to perform the second task, then there are **$n_1 n_2$** ways to perform the whole procedure.

---

##  The Product Rule
For example, let **$A=\{a,b,c,d\}$**, **$B=\{x,y,z\}$**, if you list down **all** of the **possible combinations** this way:

---

|         | **$a$**  | **$b$**  | **$c$**  | **$d$**  |
| :-----: | :------: | :------: | :------: | :------: |
| **$x$** | **$ax$** | **$bx$** | **$cx$** | **$dx$** |
| **$y$** | **$ay$** | **$by$** | **$cy$** | **$dy$** |
| **$z$** | **$az$** | **$bz$** | **$cz$** | **$dz$** |

---

##  The Product Rule
Since there are **$|A|=4$** columns and **$|B|=3$** rows, then there are **$(4)(3)$** unique combinations.

---

##  The Product Rule
- This can be generalized into **$|S_1|=n_1$** rows and **$|S_2|=n_2$** columns
- Therefore the number of unique combinations are indeed **$n_1 n_2$**.

---

##  Examples
- How many unique plate number combinations can you produce out of the pattern: 3 letters and 3 numbers.
- How many unique 8-bit strings can be formed
- How many ways can you place 2 unique rings in your ten fingers?
- How many functions are there if the domain has **$u$** elements and the range has **$v$** elements?

----

##  Examples
- How many injective functions are there if the domain has **$u$** elements and the range has **$v$** elements?

---

##  Examples
- As demonstrated in the first example, the product rule can be **extended**, to not just for two tasks
- For a procedure composed of **$m$** tasks, **$T_1$**, **$T_2$**, **$T_3$**, ..., **$T_m$**, the number of ways to perform the whole procedure is **$n_1 n_2 n_3 \cdots n_m$**.

---

##  Examples
Supposing you have two disjoint sets again, **$A$** and **$B$**, how many things of either **$A$** or **$B$** are there?

---

##  Sum Rule
If a task can be done **either** in one of **$n_1$** ways or in **$n_2$** ways, (supposing each way is unique), there are **$n_1 + n_2$** ways to perform the specific task.

---

##  Sum Rule
- For example let let **$A=\{a,b,c,d\}$**, **$B=\{x,y,z\}$**, the cardinality of the **$|A \cup B|$** is simply **$|A| + |B| - |A \cap B|$**
- Since **$A$** and **$B$** are assumed to be disjoint (because each way is supposed to be unique), then we simply add the cardinalities of the two sets **$A$** and **$B$**.

---

##  Examples
- If each character of a password can either be a letter, number, or an underscore. How many different ways can one character be.
- How many unique passwords of length 5 can you create?
- How many unique passwords of length 5-8 can you create?

---

If we remove the assumption that the set of ways are disjoint, all we have to do is to subtract the cardinality of their intersection.

---

##  Subtraction Rule
If a task can be done either in one of **$n_1$** ways or in **$n_2$** ways and there are **$m$** ways common between two sets of ways,  there are **$n_1 + n_2-m$** ways to perform the specific task.

---

##  Subtraction Rule
- If **$H$** is the set of horror movies, **$T$** is the set of thriller movies and **$D$** is the set of drama movies. How many movies are either horror, thriller, or drama?

---

##  Division Rule
If a task can be carried out **$n$** ways but there are exactly **$d$** identical ways for every unique way, there are **$\frac{n}{d}$** unique ways.

---

##  Example
- How many ways can you label four corners of a square with the labels, **$\{A,B,C,D\}$**? Assuming no labels can repeat and that rotating the labels along the corners does not create a unique labelling?

---

##  Permutations and Combinations
- Some of the examples that were described in the previous sections relate to a particular types of **counting problems**
- These counting problems involve counting the number of **arrangements** and **combinations**

---

How many ordered 3-tuples (where none of the elements repeat) can you describe from a set of 5 objects?

---

##  Permutations
- Since we are counting **tuples** (not subsets), the **order** of the elements matter (i.e
- **$(a,b,c)\neq(b,a,c)$**.

---

##  Permutations
This gives the solution via product rule, **$5(4)(3)$**.

---

##  Permutations
- A **permutation** of a set of objects, is an ordered tuple (where each element is pairwise distinct) of the objects
- An **$r$-permutation** on the other hand, is an ordered tuple (where each element is pairwise district) of any size **$r$** subset of the set.

---

##  Permutations
- For example given the set **$S=\{a,b,c,d\}$**, **$(a,b,c,d)$** and **$(a,c,b,d)$** are some permutations of **$S$**
- The ordered tuple **$(a,c,d)$** is a 3-permutation of **$S$**, and **$(b,d)$** is a 2-permutation of **$S$**.

---

##  Permutations
- The number of **$r$**-permutations of any given set with **$n$** elements is denoted by **$P(n,r)$** or **$^nP_r$**
- We can derive the general formula for **$P(n,r)$** using the product rule.

---

If **$n$** is a positive integer and **$r$** is an integer where **$1\leq r\leq n$**.
$$
P(n,r)=n(n-1)(n-2)\cdots(n-r+1)
$$

---

$$
\begin{aligned}
P(n,r)&=\frac{n!}{(n-r)!}\\
P(n,r)&=\frac{n(n-1)(n-2)\cdots(n-r+1)(n-r)(n-r-1)(n-r-2)\cdots(1)}{(n-r)(n-r-1)(n-r-2)\cdots(1)}
\end{aligned}
$$

The product **$(n-r)(n-r-1)(n-r-2)\cdots(1)$** gets cancelled out leaving:

$$
P(n,r)=n(n-1)(n-2)\cdots(n-r+1)
$$

---

##  Permutations
- How many ways can you award the first, second and third price in contest with 50 participants.
- How many different poker hands (5 cards) where the order matters are there in a deck of 52.

---

##  Combinations
While a permutation is associated to an ordered tuple, a combination is associated to a **subset**

---

How many subsets of size 3 can you describe from a set of 5 objects?

---

##  Combinations
- Since we are now counting subsets we need to take note that **set equality** behaves differently
- **$\{a,b,c\}=\{b,a,c\}$**).

---

##  Combinations
To answer this counting problem, all we need to do is to apply the **division** rule after calculating the number of permutations:

---

$$
\begin{aligned}
S&=\{a,b,c,d,e\}\\\\
\{a,b,c\}&\to\Bigg\{
\begin{matrix}
(a,b,c)\\
(b,c,a)\\
\vdots\\
(b,a,c)\\
\end{matrix}\\
\end{aligned}
$$

$$
\begin{aligned}
\{b,c,d\}&\to\Bigg\{
\begin{matrix}
(b,c,d)\\
(c,d,b)\\
\vdots\\
(d,c,b)\\
\end{matrix}\\
\end{aligned}
$$


----

$$
\begin{aligned}
&\vdots\\
\\
\{c,d,e\}&\to\Bigg\{
\begin{matrix}
(c,d,e)\\
(d,c,e)\\
\vdots\\
(e,c,d)\\
\end{matrix}
\end{aligned}
$$

---

##  Combinations
- Since one combination is actually equivalent to **$P(3,3)$** permutations
- We simply divide the total amount of 3-permutations by **$P(3,3)$**
- Which is **$\frac{60}{6}=10$** combinations
- This gives us the formula for **$r$-combinations** from a set of **$n$** elements:

---

$$
\begin{aligned}
C(n,r)&=\frac{P(n,r)}{P(r,r)}\\
C(n,r)&=\frac{\frac{n!}{(n-r)!}}{\frac{r!}{(r-r)!}}\\
C(n,r)&=\frac{n!}{r!(n-r)!}
\end{aligned}
$$

---

##  Combinations
- The number of **$r$** combinations in a set of **$n$** elements has, is denoted as **$C(n,r)$**
- It also usually denoted using **${n\choose r}$**

---

##  Combinations
- In a 6/42 lottery ticket, you select a set of **$6$** positive integers from a set of **$42$** positive integers. How many unique lottery tickets are there?
- Given a sorted list 6 unique numbers, how many sorted sublists are there
- How many bit strings of length 7 are there with exactly 3 zeroes?

----

##  Combinations
- In the binomial expansion of **$(x+y)^3$**, what is the coefficient of **$x^2y$**.

---

##  Binomial Theorem
- Looking back at the previous example, we can see how we are able to use combinatorial truths to figure out the coefficient of a term in the expansion of the binomial **$(x+y)^3$**
- As it turns out the same reasoning can be used for any binomial expansion **$(x+y)^n$**.

---

##  Binomial Theorem
In the following binomial, the expansion is found by adding all possible combinations of **$x$**'s and **$y$**'s from all **$(x+y)$**.

---

##  Binomial Theorem
$$
(x+y)^n=\underbrace{(x+y)(x+y)\cdots(x+y)}_n
$$

---

##  Binomial Theorem
$$
cx^iy^{n-i}=cu_1u_2\cdots u_n
$$

---

##  Binomial Theorem
- where **$u_i$** is either **$x$** or **$y$** and the coefficient **$c$** is the number of times the exact combination of **$x$** and **$y$** is repeated
- Therefore, to figure out the coefficient of some arbitrary term **$x^iy^{n-i}$** in the binomial expansion, you just have to answer the combinatorial question:

---

how many **$u_1u_2\cdots u_n$** are there where there are exactly **$i$** **$x$**'s?

---

how many bit stings of length **$n$** are there with exactly **$i$** zeroes?

---

##  Binomial Theorem
Which can be calculated using **$C(n,i)$**

---

##  Binomial Theorem
$$
\begin{aligned}
(x+y)^n&=\sum_{i=0}^{n}{{n \choose i}x^iy^{n-i}}\\
(x+y)^n&={n \choose 0}y^{n}+{n \choose 1}x^1y^{n-1}+\cdots+{n \choose n}x^n
\end{aligned}
$$

---

For the first and the last element's **$x^0$** and **$y^0$** are ommited.

---

##  Binomial Theorem
For example the coefficient of the term **$x^{21} y^{13}$** of the binomial **$(x+y)^{34}$**:

---

##  Binomial Theorem
$$
{34 \choose 21}x^{21}y^{13}=927983760x^{21}y^{13}
$$

---

What is the sum of all coefficients in the expansion of a binomial on the **$n$th** degree?

---

##  Binomial Theorem
$$
\begin{aligned}
\sum_{i=0}^{n}{n \choose i}&=\sum_{i=0}^{n}{n \choose i}1^i 1^{n-i}\\
\sum_{i=0}^{n}{n \choose i}&=(1+1)^n\\
\sum_{i=0}^{n}{n \choose i}&=2^n
\end{aligned}
$$

---

##  Binomial Theorem
- Which actually make sense if you answer the question using the product rule since you there are 2 ways (selecting either **$x$** or **$y$**) in each of the **$n$** tasks in the whole procedure
- This also makes sense on the context of bit strings since there are exactly **$2^n$** unique bit strings of length **$n$**.

---

##  Binomial Theorem
$$
\begin{aligned}
\sum_{i=0}^{n}{(-1)^i{n \choose i}}&=\sum_{i=0}^{n}{n \choose i}(-1)^i 1^{n-i}\\
\sum_{i=0}^{n}{(-1)^i{n \choose i}}&=(-1+1)^n\\
\sum_{i=0}^{n}{(-1)^i {n \choose i}}&=0^n=0
\end{aligned}
$$

---

##  Pascals Identity and Triangle
One more important principle related to binomial coefficients is **Pascal's triangle**

---

##  Pascals Identity and Triangle
One of the most important combinatoric identities is known as **Pascal's Identity**:

---

##  Pascals Identity and Triangle
$$
{n+1 \choose r}={n \choose r-1}+{n \choose r}
$$

---

##  Pascals Identity and Triangle
$$
\begin{aligned}
{n \choose r-1}+{n \choose r}&=\frac{n!}{(r-1)!(n-(r-1))!}+\frac{n!}{r!(n-r)!}\\
&=\frac{n!}{(r-1)!(n-r+1)!}+\frac{n!}{r!(n-r)!}\\
&=\frac{n!r}{r!(n-r+1)!}+\frac{n!(n-r+1)}{r!(n-r+1)!}\\
&=\frac{n!r+n!(n-r+1)}{r!(n-r+1)!}\\
&=\frac{n!(n+1)}{r!(n+1-r)!}\\
&=\frac{(n+1)!}{r!(n+1-r)!}\\
{n \choose r-1}+{n \choose r}&={n+1 \choose r}
\end{aligned}
$$

---

##  Pascals Identity and Triangle
$$
\begin{matrix}
&&&&&&&1&&&&&&\\
&&&&&&1&&1&&&&&\\
&&&&&1&&2&&1&&&&\\
&&&&1&&3&&3&&1&&&\\
&&&1&&4&&6&&4&&1&&\\
&&1&&5&&10&&10&&5&&1&\\
&1&&6&&15&&20&&15&&6&&1
\end{matrix}
$$

---

##  Pascals Identity and Triangle
$$
\begin{matrix}
&&&&&&&{0 \choose 0}&&&&&&\\
&&&&&&{0 \choose 0}&&{0 \choose 0}&&&&&\\
&&&&&{2 \choose 0}&&{2 \choose 1}&&{2 \choose 2}&&&&\\
&&&&{3 \choose 0}&&{3 \choose 1}&&{3 \choose 2}&&{3 \choose 3}&&&\\
&&&{4 \choose 0}&&{4 \choose 1}&&{4 \choose 2}&&{4 \choose 3}&&{4 \choose 4}&&\\
&&{5 \choose 0}&&{5 \choose 1}&&{5 \choose 2}&&{5 \choose 3}&&{5 \choose 4}&&{5 \choose 5}&\\
&{6 \choose 0}&&{6 \choose 1}&&{6 \choose 2}&&{6 \choose 3}&&{6 \choose 4}&&{6 \choose 5}&&{6 \choose 6}
\end{matrix}
$$

---

##  Finite Probability Space
- **experiment** - in the context of probability an experiment is a procedure that results to exactly one outcome out of a set of possible outcomes.
- **sample space** - we call the set of possible outcomes of a particular experiment its corresponding sample space

----

##  Finite Probability Space
- **event** - an event is a subset of the sample space

---

if **$S$** is a **finite** nonempty sample space of equally likely outcomes, and **$E$** is an event, given that **$E \subset S$**, The probability of event **$E$**, (denoted by **$p(E)$):

$$
p(E)=\frac{|E|}{|S|}
$$

---

##  Finite Probability Space
- The probability of an event can only be between **$0$** to **$1$**
- That is because the **$E$** is a subset of **$S$**
- Therefore, we can conclude that its cardinality is greater than or equal to **$0$** and less than or equal to **$|S|$** ($0 \leq |E| \leq |S|$).

---

##  Finite Probability Space
Since there are  3 oranges, the probability for choosing an orange can be calculated as: **$\frac{3}{11}$**.

---

##  Examples
- Given the same scenario above, what is the probability that two fruits selected at random are both bananas?

- What is the probability that a ticket wins the 6/49​ lottery? Selecting a combination of 6 numbers from 1 to 49.

----

##  Examples
- After uniformly shuffling the list **$[3,2,1,1,4,5]$**, what is the probability that the shuffling produces a sorted list?

---

##  Probabilities of unions of events
- If your looking for the probability that either one of two events **$E$** or **$F$** occurs (where both **$E$** and **$F$** are subsets of **$S$), you can simply combine the two events into one event which corresponds to their union
- Since this union is still the subset of the sample space **$S$**, you can use Laplace's definition to find the probability:

---

##  Probabilities of unions of events
$$
\begin{aligned}
p(E \cup F) &= \frac{|E|+|F|-|E \cap F|}{|S|}\\
&= \frac{|E|}{|S|}+\frac{|F|}{|S|}-\frac{|E \cap F|}{|S|}\\\\
p(E \cup F) &= p(E) + p(F) + p(E \cap F)
\end{aligned}
$$

---

##  Probabilities of complements
- We can leverage the fact that since event **$E$** is a subset of **$S$**, then the set difference **$S-E$** (which is also a subset of **$S$), corresponds to all events where **$E$** is not the outcome
- That is because **$S-E$** is literally the set of all outcomes that are not **$E$**
- This leads us to the formula for the probability of the **complement** of an event, (denoted by **$p(\overline{E})$):

---

##  Probabilities of complements
$$
\begin{aligned}
p(\overline{E}) &= p(S-E)\\
&=\frac{|S-E|}{|S|}\\
&=\frac{|S|-|E|}{|S|}\\
&=1-\frac{|E|}{|S|}\\\\
p(\overline{E})&=1-p(E)
\end{aligned}
$$

---

##  Probabilities of complements
(Given **$E$** as the event where the random bit string has at least one zero)

---

##  Probabilities of complements
$$
\begin{aligned}
p(E)&=1-P(\overline{E})\\
&=1-\frac{|\overline{E}|}{|S|}\\
&=1-\frac{1}{2^8}\\
&=1-\frac{1}{256}\\\\
p(E)&=\frac{255}{256}
\end{aligned}
$$

---

##  Probability theory
- This is done by assigning a specific probability **$p(s)$** for each outcome **$s \in S$**
- The assignment of specific probabilities can only be valid if **$0 \leq p(s) \leq 1$** for each outcome **$s$**, and that **$\sum_{s \in S}{p(s)}=1$** (each probability is within the range **$[0,1]$**, and the sum of all probabilities is exactly **$1$)

---

##  Probability theory
- This definition of probability describes the function, **$p:S\to [0,1]$**, known as the **probability distribution** for the particular experiment
- The correct assignment of each probability **$p(S)$** should satisfy the limit:

---

##  Probability theory
$$
\lim_{n\to \infty}{\frac{u}{n}}=p(s)
$$

---

##  Probability theory
- Given that after performing the experiment **$n$** times, the outcome **$s$** occurred **$u$** times
- For example, as you increase the number of times you flip an unbiased coin, the ratio of flipping heads divided by the number of flips should approach **$\frac{1}{2}$**.

---

Given the sample space for flipping a coin, **$S=\{H,T\}$:

- **$p(H)=\frac{1}{2}$
- **$p(T)=\frac{1}{2}$

---

##  Probability theory
- A probability distribution such as the above which follows Laplace's assumption of having equally likely outcomes, is called a **uniform distribution**
- This implies that a uniformly distributed experiment will have a probability assignment **$p(s)=\frac{1}{n}$** where **$s \in S$** and **$|S|=n$**.

---

##  Probability theory
This then gives us a more general definition for the probability of an event **$E$** as the sum of all the probabilities of the outcomes related to event **$E$**.

---

##  Probability theory
$$
p(E)=\sum_{s \in E}{p(s)}
$$

