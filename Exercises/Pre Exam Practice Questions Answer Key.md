# Pre Exam Practice Questions Answer Key

1. $i(n)$, $f(n)$, $g(n)$, $j(n)$, note that $g(n) \in \Theta(j(n))$​

   > To solve this you sometimes need to use the limit definition for the compound functions. 
   >
   > - $f(n)$​ is quadratic,
   > - $g(n)$ is exponential
   > - $i(n)$​ is logarithmic (find the most complex term using the limit definition)
   > - $j(n)$ is exponential
   >
   > You'll also find that after apply change of base to the exponential functions, they are the same function.

2. Only choice **b** is true

   > $$
   > \begin{aligned}
   > \lim_{n \to \infty} {\frac{f(n)g(n)}{f(n)}} &= \lim_{n \to \infty} {\frac{\cancel{f(n)}g(n)}{\cancel{f(n)}}}
   > \\&=\lim_{n \to \infty}{g(n)}
   > \\&= \infty
   > \end{aligned}
   > $$

3. **g**; a, b and c are all true

   > Since $f(n) \in O(g(n))$, then $\lim_{n \to \infty}{\frac{f(n)}{g(n)}} < \infty$, which implies $\lim_{n \to \infty}{\frac{f(n)}{g(n)}} \neq \infty$ (which makes choice a true). It also implies $\lim_{n \to \infty}{\frac{g(n)}{f(n)}} > 0$ (which makes choice b true). Applying the sum rule, we find choice c to be true as well

4. **e**; only b and c are true

   > You can solve for the determinant of the transformation matrix formed by these set of basis vectors
   >
   > - $\det(\begin{bmatrix}a&b\\b&a\end{bmatrix})=a^2-b^2$
   > - $\det(\begin{bmatrix}c&b\\-c&-b\end{bmatrix})=-bc+bc=0$
   > - $\det(\begin{bmatrix}-a&a\\b&-b\end{bmatrix})=ab-ab=0$

5. $$
   \begin{aligned}
   A^{-1}=\begin{bmatrix}
   -\frac{3}{7} & -\frac{6}{7} & \frac{2}{7} \\
    -\frac{5}{7} & -\frac{3}{7} & \frac{1}{7} \\
    1 & 1 & 0 \\
    \end{bmatrix}
   \end{aligned}
   $$

6. $$
   \begin{aligned}
   \det(A^{-1}) = -\frac{1}{7}
   \end{aligned}
   $$

7. $u^2 \det(B)$​

   > Given a general 2x2 transformation $B = \begin{bmatrix}a&b\\c&d\end{bmatrix}$
   > $$
   > \begin{aligned}
   > B &= \begin{bmatrix}a&b\\c&d\end{bmatrix}\\
   > uB &= \begin{bmatrix}ua&ub\\uc&ud\end{bmatrix}\\
   > \det(uB) &= u^2 ad - u^2 bc\\
   > \det(uB) &= u^2 (ad - bc)\\
   > \det(uB) &= u^2 \det(B)
   > \end{aligned}
   > $$

8. $T \vec{p}=\begin{bmatrix}-2\\7 \end{bmatrix}$​
9. $T \vec{q}=\begin{bmatrix}-6\\0 \end{bmatrix}$
10. $TT \vec{r}=\begin{bmatrix}-12\\0 \end{bmatrix}$

11. 

    > $$
    > \begin{aligned}
    > \det(\begin{bmatrix}-1-\lambda & 2\\3 & 1-\lambda \\\end{bmatrix}) &=0\\
    > (-1-\lambda)(1-\lambda) -6&=0\\
    > \lambda^2 -7 &=0\\
    > \\
    > \lambda&=\frac{0\pm \sqrt{0^2 - 4(1)(-7)}}{2(1)}\\
    > \lambda &= \pm \sqrt{7}
    > \end{aligned}
    > $$
    >
    > With eigenvalues $\lambda = \sqrt{7}$ and $\lambda = -\sqrt{7}$ we can solve for the eigenvectors
    > $$
    > \begin{aligned}
    > \lambda = \sqrt{7}\\
    > \begin{bmatrix}-1 & 2\\3 & 1 \\\end{bmatrix}\vec{v}&=\sqrt{7}\vec{v}\\
    > \begin{bmatrix}-1 & 2\\3 & 1 \\\end{bmatrix}\begin{bmatrix}x\\y\end{bmatrix}&=\sqrt{7}\begin{bmatrix}x\\y\end{bmatrix}\\\\
    > -x+2y&=\sqrt{7}x\\
    > 3x+y&=\sqrt{7}y\\
    > \end{aligned}
    > $$
    > Solving for $x$ we get:
    > $$
    > \begin{aligned}
    > y &= \frac{1+\sqrt{7}}{2}x
    > \end{aligned}
    > $$
    > Which gives us the eigenvectors $\begin{bmatrix}x\\y\end{bmatrix}=\begin{bmatrix}x\\\frac{1+\sqrt{7}}{2}x\end{bmatrix}$ (the form $\begin{bmatrix}\frac{1-\sqrt{7}}{-3}y\\y\end{bmatrix}$ is also correct)
    > $$
    > \begin{aligned}
    > \lambda = -\sqrt{7}\\
    > \begin{bmatrix}-1 & 2\\3 & 1 \\\end{bmatrix}\vec{v}&=-\sqrt{7}\vec{v}\\
    > \begin{bmatrix}-1 & 2\\3 & 1 \\\end{bmatrix}\begin{bmatrix}x\\y\end{bmatrix}&=-\sqrt{7}\begin{bmatrix}x\\y\end{bmatrix}\\\\
    > -x+2y&=-\sqrt{7}x\\
    > 3x+y&=-\sqrt{7}y\\
    > \end{aligned}
    > $$
    > Solving for $x$ we get:
    > $$
    > \begin{aligned}
    > y &= \frac{1-\sqrt{7}}{2}x
    > \end{aligned}
    > $$
    > Which gives us the eigenvectors $\begin{bmatrix}x\\y\end{bmatrix}=\begin{bmatrix}x\\\frac{1-\sqrt{7}}{2}x\end{bmatrix}$ (the form $\begin{bmatrix}\frac{1+\sqrt{7}}{-3}y\\y\end{bmatrix}$ is also correct)

12. 

    > $$
    > \begin{aligned}
    > \det(\begin{bmatrix}1-\lambda & a\\a & 1-\lambda \\\end{bmatrix}) &=0\\
    > (1-\lambda)^2 -a^2&=0\\
    > (1-\lambda-a)(1-\lambda+a) &=0\\\\
    > 1-\lambda-a&=0\\
    > 1-a &= \lambda\\\\
    > 1-\lambda+a&=0\\
    > 1+a&=\lambda
    > \end{aligned}
    > $$
    >
    > With eigenvalues $\lambda = 1-a$ and $\lambda = 1+a$ we can solve for the eigenvectors
    > $$
    > \begin{aligned}
    > \lambda = 1-a\\
    > \begin{bmatrix}1 & a\\a & 1 \\\end{bmatrix}\vec{v}&=(1-a)\vec{v}\\
    > \begin{bmatrix}1 & a\\a & 1 \\\end{bmatrix}\begin{bmatrix}x\\y\end{bmatrix}&=(1-a)\begin{bmatrix}x\\y\end{bmatrix}\\\\
    > x+ay&=x-ax\\
    > ax+y&=y-ay\\
    > \end{aligned}
    > $$
    > Solving for $x$ we get:
    > $$
    > \begin{aligned}
    > y &= -x
    > \end{aligned}
    > $$
    > Which gives us the eigenvectors $\begin{bmatrix}x\\y\end{bmatrix}=\begin{bmatrix}x\\-x\end{bmatrix}$ (the form $\begin{bmatrix}-y\\y\end{bmatrix}$ is also correct)
    > $$
    > \begin{aligned}
    > \lambda = 1+a\\
    > \begin{bmatrix}1 & a\\a & 1 \\\end{bmatrix}\vec{v}&=(1+a)\vec{v}\\
    > \begin{bmatrix}1 & a\\a & 1 \\\end{bmatrix}\begin{bmatrix}x\\y\end{bmatrix}&=(1+a)\begin{bmatrix}x\\y\end{bmatrix}\\\\
    > x+ay&=x+ax\\
    > ax+y&=y+ay\\
    > \end{aligned}
    > $$
    > Solving for $x$ we get:
    > $$
    > \begin{aligned}
    > y &= x
    > \end{aligned}
    > $$
    > Which gives us the eigenvectors $\begin{bmatrix}x\\y\end{bmatrix}=\begin{bmatrix}x\\x\end{bmatrix}$

13. |           | $\vec{s}$           | $\vec{t}$            | $\vec{u}$           | $\vec{v}$ |
    | --------- | ------------------- | -------------------- | ------------------- | --------- |
    | $\vec{s}$ |                     |                      |                     |           |
    | $\vec{t}$ | $\vec{s}.\vec{t}=3$ |                      |                     |           |
    | $\vec{u}$ | $\vec{s}.\vec{u}=0$ | $\vec{t}.\vec{u}=-1$ |                     |           |
    | $\vec{v}$ | $\vec{s}.\vec{v}=2$ | $\vec{t}.\vec{v}=5$  | $\vec{u}.\vec{v}=0$ |           |

    