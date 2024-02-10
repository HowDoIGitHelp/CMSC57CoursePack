## Proof that $\frac{\sqrt{n+2}}{\log_2{n}} \in \Omega{(\log_4{(\log_2{n})})}$​

First we establish that the fraction $\frac{\sqrt{n+2}}{\log_2{n}}$ is more complex than $\log_2{n}$. By solving the limit we find:
$$
\begin{aligned}
\lim_{n \to \infty}{\frac{\frac{\sqrt{n+2}}{\log_2{n}}}{\log_2n}} &= \lim_{n \to \infty}{\frac{\sqrt{n+2}}{(\log_2{n})^2}}\\

\end{aligned}
$$

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

Since $\sqrt{n}$ and $\sqrt{n+2}$ have the same complexity, $\lim_{n \to \infty}{\frac{\sqrt{n+2}}{(\log_2{n})^2}}=\lim_{n \to \infty}{\frac{\sqrt{n}}{(\log_2{n})^2}}$. The limit $\lim_{n \to \infty}{\frac{\sqrt{n}}{(\log_2{n})^2}}$ can be solved as:
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
Therefore, $\lim_{n \to \infty}{\frac{\sqrt{n}}{(\log_2{n})^2}}=\infty=lim_{n \to \infty}{\frac{\sqrt{n+2}}{(\log_2{n})^2}}$. The function $\sqrt{n+2}$ is more complex than $(\log_2 n)^2$.

### Lemma 2: $\log_2 n \in \Omega(\log_4 {(\log_2 n)})$

$$
\begin{aligned}
\lim_{n \to \infty}{\frac{\log_2{n}}{(\log_4{(\log_2{n})}}}&=\lim_{n \to \infty}{\frac{\frac{1}{n \ln2}}{\frac{1}{n\log_2 n \ln 4 \ln2}}}\\
&=\lim_{n \to \infty}{\frac{n\log_2 n \ln 4 \ln2}{n \ln2}}\\
&=\lim_{n \to \infty}{\frac{\log_2 n \ln 4 }{1}}\\
\lim_{n \to \infty}{\frac{\log_2{n}}{(\log_4{(\log_2{n})}}}&=\infty\\
\end{aligned}
$$

### Lemma 3: $f(n) \in \Omega(g(n)) \land g(n) \in \Omega(h(n)) \to f(n) \in \Omega(h(n))$​

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

Since it was demonstrated that $\frac{\sqrt{n+2}}{\log_2{n}} \in \Omega{(\log_2{n})}$ and $\log_2 n \in \Omega(\log_4 {(\log_2 n)})$ (Lemma 2) it follows from Lemma 3 that $\frac{\sqrt{n+2}}{\log_2{n}} \in \Omega{(\log_4 {(\log_2 n)})}$.