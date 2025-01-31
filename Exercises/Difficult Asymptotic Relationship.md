## Proof that $\frac{\sqrt{n+2}}{\log_2{n}} \in \Omega{(\log_4{(\log_2{n})})}$​

If we keep on applying LHR to prove this, we will end up expanding the  ratio more an more. Instead we will solve this in multiple steps.

First we establish that the fraction $\frac{\sqrt{n+2}}{\log_2{n}}$ is more complex than $\log_2{n}$. By solving the limit we find:
$$
\begin{aligned}
\lim_{n \to \infty}{\frac{\frac{\sqrt{n+2}}{\log_2{n}}}{\log_2n}} &= \lim_{n \to \infty}{\frac{\sqrt{n+2}}{(\log_2{n})^2}}\\
\end{aligned}
$$

Since they have the same limits, solving $\lim_{n \to \infty}{\frac{\sqrt{n+2}}{(\log_2{n})^2}}$ will also solve $\lim_{n \to \infty}{\frac{\frac{\sqrt{n+2}}{\log_2{n}}}{\log_2n}}$.

To solve $\lim_{n \to \infty}{\frac{\sqrt{n+2}}{(\log_2{n})^2}}$ we must first establish some lemmas.

### Lemma 1: $\sqrt{n+2} \in \Theta(\sqrt{n})$

$$
\begin{aligned}
\lim_{n \to \infty}{\frac{\sqrt{n+2}}{\sqrt{n}}}&=\lim_{n \to \infty}{\frac{\sqrt{n+2}}{\sqrt{n}}\frac{\sqrt{n}+\sqrt{n+2}}{\sqrt{n}+\sqrt{n+2}}}\\
&= \lim_{n \to \infty}{\frac{\sqrt{n^2+2n} + n +2}{\sqrt{n^2+2n} + n}}\\
&= \lim_{n \to \infty}{\frac{
\frac{1}{2\sqrt{n^2 + 2}}2n + 2 + 1}{\frac{1}{2\sqrt{n^2 + 2}}2n + 2 + 1}}\\
\lim_{n \to \infty}{\frac{\sqrt{n+2}}{\sqrt{n}}}&=1
\end{aligned}
$$

### Lemma 2: $\sqrt{n+2} \in \Theta((\log_2{n})^2) $

Given that $\sqrt{n+2} \in \Theta(\sqrt{n})$, it means they have the same complexity. We can use $\sqrt{n}$ as an easier substitute for $\sqrt{n+2}$. Below shows that $\sqrt{n} \in \Omega{(\log_2 {n})^2}$
$$
\begin{aligned}
\lim_{n \to \infty}{\frac{\sqrt{n}}{(\log_2{n})^2}}&=\lim_{n \to \infty}{\frac{\frac{1}{2\sqrt{n}}}{2\log_2{n}\frac{1}{n \ln2}}}\\
&= \lim_{n \to \infty}{\frac{n \ln2}{4(\log_2{n})\sqrt{n}}}\\
&= \lim_{n \to \infty}{\frac{\sqrt{n} \ln2}{4(\log_2{n})}}\\
&= \lim_{n \to \infty}{\frac{\frac{1}{2\sqrt{n}}\ln2}{4\frac{1}{n \ln2}}}\\
&= \lim_{n \to \infty}{\frac{n (\ln2)^2}{8\sqrt{n}}}\\
&= \lim_{n \to \infty}{\frac{\sqrt{n} (\ln2)^2}{8}}\\
\lim_{n \to \infty}{\frac{\sqrt{n}}{(\log_2{n})^2}}&=\infty
\end{aligned}
$$
From lemma 1, we know that $\sqrt{n+2} \in \Theta(\sqrt{n})$ and therefore $c_1\sqrt{n+2} \leq \sqrt{n} \leq c_2\sqrt{n+2}$ (from the set definition of $\Omega$). 

Also, since $\sqrt{n} \in \Omega{(\log_2 {n})^2}$ we can conclude that $c_3(\log_2 {n})^2 \leq \sqrt{n}$. Combining the inequalities we can conclude that: $c_3(\log_2 {n})^2 \leq \sqrt{n} \leq c_2\sqrt{n+2}$. Which can be rearranged as such:
$$
\begin{aligned}
c_3(\log_2 {n})^2 &\leq \sqrt{n} \leq c_2\sqrt{n+2}\\
c_3(\log_2 {n})^2 & \leq c_2\sqrt{n+2}\\
\frac{c_3}{c_2}(\log_2 {n})^2 & \leq \sqrt{n+2}\\
\end{aligned}
$$
From the definition of $\Omega$, We can conclude that $\sqrt{n+2} \in \Theta((\log_2{n})^2)$. Therefore, $\lim_{n \to \infty}{\frac{\sqrt{n+2}}{(\log_2{n})^2}} = \infty = \lim_{n \to \infty}{\frac{\frac{\sqrt{n+2}}{\log_2{n}}}{\log_2n}}$.

### Lemma 3: $\log_2 n \in \Omega(\log_4 {(\log_2 n)})$

$$
\begin{aligned}
\lim_{n \to \infty}{\frac{\log_2{n}}{(\log_4{(\log_2{n})}}}&=\lim_{n \to \infty}{\frac{\frac{1}{n \ln2}}{\frac{1}{n\log_2 n \ln 4 \ln2}}}\\
&=\lim_{n \to \infty}{\frac{n\log_2 n \ln 4 \ln2}{n \ln2}}\\
&=\lim_{n \to \infty}{\frac{\log_2 n \ln 4 }{1}}\\
\lim_{n \to \infty}{\frac{\log_2{n}}{(\log_4{(\log_2{n})}}}&=\infty\\
\end{aligned}
$$

### Lemma 4: $f(n) \in \Omega(g(n)) \land g(n) \in \Omega(h(n)) \to f(n) \in \Omega(h(n))$​

The lemma above shows how asymptotic relationships can behave like inequalities. Lemma 4 is analogues to the the property of inequality:$f \geq g \land g \geq h \to f \geq h$. 

Given $f(n) \in \Omega(g(n))$ and $g(n) \in \Omega(h(n))$, it follows from the set definition that:
$$
\begin{aligned}
f(n) &\geq c_1 g(n) \\
g(n) &\geq c_2 h(n) \\
\frac{1}{c_1}f(n) \geq g(n) & \geq c_2 h(n)\\
\frac{1}{c_1}f(n) &\geq c_2 h(n)\\
\frac{1}{c_1c_2}f(n) &\geq h(n)\\
\end{aligned}
$$

> Given nonzero constants $c_1$ and $c_2$ and for sufficiently large values of $n$.

From the inequality $\frac{1}{c_1c_2}f(n) &\geq h(n)\\$, we can conclude that $f(n) \in \Omega(h(n))$.

Since it was demonstrated that $\frac{\sqrt{n+2}}{\log_2{n}} \in \Omega{(\log_2{n})}$ (lemma 2) and $\log_2 n \in \Omega(\log_4 {(\log_2 n)})$ (Lemma 3) it follows from Lemma 4 that $\frac{\sqrt{n+2}}{\log_2{n}} \in \Omega{(\log_4 {(\log_2 n)})}$.

