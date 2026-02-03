## Lemma $\log n! \in \Theta(n\log n)$ 

We can show that the $\log n!$ is tightly bound by $n \log n$. First, $\log n!$ is upper bounded by $n\log n$:

First we can express that $n \log n$ as a sum of $n$ terms of $\log n$
$$
\begin{aligned}
n \log n &= \log n^n \\
n \log n &= \sum_{i = 1}^{n} \log n\\\
\end{aligned}
$$
We can express $\log n!$ as a similar sum series:
$$
\begin{aligned}
\log n! &= \log ((1)(2)\cdots(n-1)(n))\\
\log n! &= \log 1 + \log 2 + \cdots+ \log (n-1) + \log (n)\\
\log n! &= \sum_{i = 1}^{n} \log i
\end{aligned}
$$
From here we can see that every term in the sum series of $\log n!$ is less than or equal any term in the sum series of $n \log n$:
$$
\begin{aligned}
\log 1 &\leq \log n\\
\log 2 &\leq \log n\\
&\vdots\\
\log (n-1) &\leq \log n\\
\log (n) &\leq \log n
\end{aligned}
$$
Therefore we know that $\log n!$ cannot be greater than $n \log n$, and that $\log n! \in O(n \log n)$
$$
\begin{aligned}
\sum_{i = 1}^{n} \log i &\leq \sum_{i = 1}^{n} \log n\\
\log n! &\leq n \log n\\\\
\therefore \log n! &\in O(n \log n)
\end{aligned}
$$
