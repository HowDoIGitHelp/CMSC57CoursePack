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

##  Probability theory
- **$p(E_1 \cup E_2)=p(E_1)+p(E_2)-p(E_1 \cap E_2)$**
- **$p(\overline{E})=1-p(E)$**

---

##  Conditional Probability
Given a six-sided die, what is the probability that the sum of two rolls is **divisible by three**?

---

##  Conditional Probability
- Supposing the ordered pair **$(u,v)$** corresponds to the outcome rolling **$u$**  and then rolling **$v$**, the event described above corresponds to the following set: **$\{(1,2),(2,1),(1,5),(5,1),(2,4),(4,2),(3,3)\}$**
- Since each of the outcomes in this event have the probability **$\frac{1}{36}$**, the probability that the sum of two rolls is divisible by three is **$\frac{7}{36}$**.

---

##  Conditional Probability
How would the probability change, if we change the scenario, such that the first die roll is **$2$**?

---

##  Conditional Probability
"the **conditional probability** of two rolls being divisible by three given that the first roll is 2"

---

##  Conditional Probability
A conditional probability is often denoted by **$p(E|F)$** where **$E$** is the desired event and **$F$** is the assumed event.

---

##  Conditional Probability
- We can answer these probability questions by imagining a sample space where all first dice rolls are **$2$**, **$F=\{(2,1),(2,2),(2,3),(2,4),(2,5),(2,6)\}$**
- We then look at the set of outcomes where both **$E$** and **$F$** is satisfied (the first roll is 2 and the sum of both rolls is divisible by three) or the set **$E \cap F=\{(2,1),(2,4)\}$**
- This means that the **$E|F$** occurs 2 out of 6 times, giving us the conditional probability **$p(E|F)=\frac{1}{3}$**.

---

##  Conditional Probability
$$
p(E|F)=\frac{p(E \cap F)}{p(F)}
$$

---

##  Conditional Probability
Given **$H$** as the event that the second flip is heads, and **$T$** as the event that the first flip is tails, we solve for **$p(H|T)$**:

---

##  Conditional Probability
$$
\begin{aligned}
p(H|T)&=\frac{p(H \cap T)}{p(T)}=\frac{\frac{1}{4}}{\frac{1}{2}}\\\\
p(H|T)&=\frac{1}{2}
\end{aligned}
$$

---

##  Independence
- When you think about it, the outcome of the first coin flip **does not actually affect** the outcome of the second coin flip
- The probability of this event is exactly the same as the probability of **$p(H|T)$**
-  Whenever **$p(H|T)=p(H)$**, we can conclude that the events **$H$** and **$T$** are **independent**

---

**$E$** and **$F$** are independent if and only if **$p(E \cap F)=p(E)p(F)$

**$p(E \cap F)=p(E)p(F)$** is just algebraic manipulation of **$p(E|F)=p(E)$**.

---

##  Bernoulli Trials and Binomial Distributions
- Performing an experiment that can only have two outcomes (such as flipping a coin) has a special name, it is called a **Bernoulli trial**
- Since the trial can only have two outcomes (generally called successes and failures), we can infer that the probability of successes, **$p$** and the probability of failures, **$q$** will sum up to 1, ($p+q=1$).

---

##  Bernoulli Trials and Binomial Distributions
Given **$p$** as the probability of success and **$q$** as the probability of failure in a trial, we can solve for the probability of having **$k$** successes in **$n$** mutually independent trials:

---

When **$n$** trials is performed, there are a total of **$2^n$** possible outcomes. The number of ways exactly **$k$** successes appear in **$n$** trials is exactly **$C(n,k)$**. Since each of these ways have the probability **$p^k q^{n-k}$** (because each trial is mutually exclusive we can just multiply all probabilities). Therefore, the probability of having exactly **$k$** successes is:

----


$$
b(k;n,p)=C(n,k)p^k q^{n-k}
$$

The probability of a observing **$k$** successes in **$n$** mutually exclusive Bernoulli trials with probability success **$p$** is denoted by **$b(k;n,p)$**.

---

##  Bernoulli Trials and Binomial Distributions
The probability **$b(k;n,p)$** as a function of **$k$** is called a **binomial distribution**.

---

Since the value of each digit in a 6-bit string is a independent from the other digits, and a digit can only be either a 0 (success) and a 1 (failure), we can restate this as the following probability: **$b(4,6,0.5)$**. Therefore, this probability is:

$$
b(4,6,0.5)=C(6,4)0.5^40.5^2=0.2345375
$$

---

<!-- _class: imgh -->
####  Bayes' Theorem
![bg contain](https://raw.githubusercontent.com/HowDoIGitHelp/CMSC57CoursePack/master/Lecture%20Notes/Media/counting%20and%20probability/bayes1.jpg)

---

<!-- _class: imgh -->
####  Bayes' Theorem
![bg contain](https://raw.githubusercontent.com/HowDoIGitHelp/CMSC57CoursePack/master/Lecture%20Notes/Media/counting%20and%20probability/bayes2.jpg)

---

##  Bayes' Theorem
**$p(B)$)? The answer is very straightforward, since box B is one event out of 3 possible outcomes in the sample space, the probability is **

---

##  Bayes' Theorem
Lets call picking a blue ball **$b$**.

---

<!-- _class: imgh -->
####  Bayes' Theorem
![bg contain](https://raw.githubusercontent.com/HowDoIGitHelp/CMSC57CoursePack/master/Lecture%20Notes/Media/counting%20and%20probability/bayes3.jpg)

---

##  Bayes' Theorem
How does event **$b$** affect the probability that this box is box B? Does this increase or decrease the probability that this is box B?

---

##  Bayes' Theorem
$$
0=p(R|b)<p(M|b)<p(B|b)
$$

---

##  Bayes' Theorem
- At the start of the scenario, we are able to calculate that the probability of the selected box being box B, is **$p(B)=\frac{1}{3}$**
- We call this probability the **prior** probability (since the probability is before any evidence is gathered)
- After gathering some **evidence** by randomly picking a ball inside the selected box (event **$b$) we update our intuition about the probability of the selected box being B
- We know denote this probability as **$p(B|b)$**

---

##  Bayes' Theorem
What exactly is **$p(B|b)$**? Before we answer that, let us derive Bayes' theorem by looking at a general scenario:

---

##  Bayes' Theorem
- Given some event **$Q$**, and some evidence **$R$**, what is the probability of **$Q$** occurring after observing the evidence **$R$** (i.e
- **$p(Q|R)$**), if evidence **$R$** occurs in **$Q$** with the probability **$p(R|Q)$**?

---

<!-- _class: imgh -->
####  Bayes' Theorem
![bg contain](https://raw.githubusercontent.com/HowDoIGitHelp/CMSC57CoursePack/master/Lecture%20Notes/Media/counting%20and%20probability/bayes4.jpg)

---

##  Bayes' Theorem
$$
\begin{aligned}
P(Q) &= P(R|Q) + P(\overline{R}|Q)\\
\end{aligned}
$$

---

##  Bayes' Theorem
The sample space can be divided into two outcomes **$Q$** and **$\overline{Q}$** (either **$Q$** occurs or **$Q$** doesn't occur),

---

<!-- _class: imgh -->
####  Bayes' Theorem
![bg contain](https://raw.githubusercontent.com/HowDoIGitHelp/CMSC57CoursePack/master/Lecture%20Notes/Media/counting%20and%20probability/bayes5.jpg)

---

##  Bayes' Theorem
- Within the outcome **$p(Q)$**, the evidence **$R$** has the probability of being observed as **$p(R|Q)$**
- Therefore to figure out **$p(Q|R)$**, we just need to look at the proportion of the occurrences of **$R|Q$**, among all occurrences of **$Q$** in the sample space,

---

<!-- _class: imgh -->
####  Bayes' Theorem
![bg contain](https://raw.githubusercontent.com/HowDoIGitHelp/CMSC57CoursePack/master/Lecture%20Notes/Media/counting%20and%20probability/bayes6.jpg)

---

##  Bayes' Theorem
- Suppose the size of the sample space is **$|S|$**, we can represent the total number of **$|Q|$** occurences as **$p(Q)|S|$**
- That's because **$p(Q)$** is basically the ratio of **$|Q|$** occurences divided by all possible outcomes:

---

##  Bayes' Theorem
$$
\begin{aligned}
p(Q)&=\frac{|Q|}{|S|}\\
p(Q)|S|&=\frac{|Q|}{|S|}|S|\\\\
p(Q)|S|&=|Q|
\end{aligned}
$$

---

You can think of **$|S|$** as the total area of the overall  rectangle and **$p(Q)|S|$** as the total area of the two rectangles in the left side.

---

##  Bayes' Theorem
- Using the same reasoning we can figure out the number of occurrences corresponding the event **$R|Q$**
- Since there are **$p(Q)|S|$** occurrences where **$Q$** is the outcome, **$p(R|Q)p(Q)|S|$** is the number of occurrences corresponding the event **$R|Q$**
- Also, with the same reasoning **$p(R|\overline{Q})p(\overline{Q})|S|$** is the number of occurrences corresponding the event **$R|\overline{Q}$**.

---

##  Bayes' Theorem
Therefore, the probability **$p(Q|R)$** can be calculated as:

---

##  Bayes' Theorem
$$
\begin{aligned}
p(Q|R)=\frac{p(R|Q)p(Q)|S|}{p(R|Q)p(Q)|S|+p(R|\overline{Q})p(\overline{Q})|S|}
\end{aligned}
$$

---

##  Bayes' Theorem
cancelling out **$|S|$** on the numerator and denominator gives us the definition of Bayes' theorem:

---

##  Bayes' Theorem
$$
\begin{aligned}
p(Q|R)=\frac{p(R|Q)p(Q)}{p(R|Q)p(Q)+p(R|\overline{Q})p(\overline{Q})}
\end{aligned}
$$

---

##  Bayes' Theorem
- **$p(Q|R)$** - the **posterior** probability, or the probability that Q occurs after observing evidence **$R$** occurred
- **$p(Q)$** - the **prior** probability, or the probability of **$Q$** before observing the evidence

----

##  Bayes' Theorem
- **$p(R|Q)$** - the **likelihood of the R given Q** or the probability of **$R$** occurring specifically on **$Q$** outcomes

---

If the general probability of the evidence **$p(R)$** is known, the theorem can be written like the following:

$$
\begin{aligned}
p(Q|R)=\frac{p(R|Q)p(Q)}{p(R)}
\end{aligned}
$$

---

##  Bayes' Theorem
To answer the question earlier, what exactly is the probability of the selected box being the box B, given that one of the balls is blue, or the posterior, **$p(B|b)$**?

---

##  Bayes' Theorem
- The prior probability **$p(B)=\frac{1}{3}$**.

- The likelihood of picking blue balls in box B is **$p(b|B)=1$**.

- The likelihood of picking blue balls in boxes that are not B (either R or M) can be calculated as,  **$p(b|\overline{B})=p(b|R \cup M) = \frac{p(b \cap (R \cup M))}{p(R \cup M)} = \frac{1}{4}$**.

---

**$\frac{1}{4}$** is calculated using the following lemma**: **$p(b \cap (R \cup M))= p(b|R)p(R)+p(b|M)p(M)$

The proof of this lemma, (recall conditional probability)


----

$$
\begin{aligned}
p(b|R)p(R)+p(b|M)p(M)&=\frac{p(b \cap R)}{p(R)}p(R)+\frac{p(b \cap M)}{p(M)}p(M)\\
&=p(b \cap R)+p(b \cap M) - 0\\
&=p(b \cap R)+p(b \cap M) - p((b \cap R) \cap (b \cap M))*\\
&=p((b \cap R) \cup p(b \cap M))\\
&=p(b \cap (R \cup  M))
\end{aligned}
$$
*$p((b \cap R) \cap (b \cap M))=0$** because a box cannot be both R and M at the same time, therefore there is zero probability that this intersection of events happens. I added this so that the use of union of events theorem is clearer.

----


Therefore we get **$\frac{1}{4}$** like this:
$$
\begin{aligned}
p(b|\overline{B})&=p(b|R \cup M)\\&=\frac{p(b \cap (R \cup M))}{p(R \cup M)}\\&=\frac{p(b|R)p(R)+p(b|M)p(M)}{p(R \cup M)}\\
&=\frac{0(\frac{1}{3})+\frac{1}{2}(\frac{1}{3})}{\frac{2}{3}}\\
p(b|\overline{B})&=\frac{3}{12}=\frac{1}{4}
\end{aligned}
$$


---

##  Bayes' Theorem
Therefore the posterior probability **$p(B|b)$**:

---

##  Bayes' Theorem
$$
\begin{aligned}
p(B|b)&=\frac{p(b|B)p(B)}{p(b|B)p(B)+p(b|\overline{B})p(\overline{B})}\\
p(B|b)&=\frac{1(\frac{1}{3})}{1(\frac{1}{3})+(\frac{1}{4})(\frac{2}{3})}\\\\
p(B|b)&=\frac{2}{3}
\end{aligned}
$$

---

##  Bayes' Theorem
$$
\begin{aligned}
p(M|b)&=\frac{p(b|M)p(M)}{p(b|M)p(M)+p(b|\overline{M})p(\overline{M})}\\
p(M|b)&=\frac{(\frac{1}{2})(\frac{1}{3})}{(\frac{1}{2})(\frac{1}{3})+(\frac{1}{2})(\frac{2}{3})}\\\\
p(M|b)&=\frac{1}{3}\\\\
p(R|b)&=\frac{p(b|R)p(R)}{p(b|R)p(R)+p(b|\overline{R})p(\overline{R})}\\
p(R|b)&=\frac{(0)(\frac{1}{3})}{(0)(\frac{1}{3})+(\frac{3}{4})(\frac{2}{3})}\\\\
p(R|b)&=0
\end{aligned}
$$

---

##  Bayesian spam filters
- The **naive bayes algorithm** uses the bayesian theorem to classify the classification of something based on its characteristics
- This algorithm has been used in **bayesian spam** filters where an email can be classified as spam or not spam

---

##  Random variable and expected value
The **expected value** of some random variable (some variable that represents the outcome of an experiment) represents the most likely value based on the probability distributions of all the possible outcomes

---

##  Random variable and expected value
If we imagine a random variable **$X$** that represents the number of heads in a coin flip, we know that this random variable **$X$** have two possible values, **$X=1$** or **$X=0$**

---

##  Random variable and expected value
$$
\begin{aligned}
E(X)&=\sum_{s\in\{1,0\}}{p(s)s}\\
E(X)&=\frac{1}{2}(1)+\frac{1}{2}(0)\\\\
E(X)&=0.5
\end{aligned}
$$

---

Where **$E(X)$** is the expected value of **$X$**

---

##  Random variable and expected value
$$
\begin{aligned}
E(X)&=\frac{1}{6}(1)+\frac{1}{6}(2)+\frac{1}{6}(3)+\frac{1}{6}(4)+\frac{1}{6}(5)+\frac{1}{6}(6)\\
E(X)&=\frac{1}{6}(21)\\
E(X)&=\frac{7}{2}\\\\
2(E(X))&=7
\end{aligned}
$$

---

where **$X$** is the random variable that represents the outcome of a die roll.

---

##  Variance
$$
\text{Var}(X)=E((X-E(X))^2)
$$

---

##  Variance
This seems like a strange formula but if you imagine the squared difference **$(X-E(X))^2$** as a random variable, then you can calculate its expected value as the weighted average of squared deviations from the mean:

---

##  Variance
$$
\text{Var}(X)=\sum_{s \in S}p(s)(s-E(X))^2
$$

