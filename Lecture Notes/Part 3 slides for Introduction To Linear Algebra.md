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

 # Introduction To Linear Algebra 

---

##  Inverse Matrices
$$
\begin{aligned}
T^{-1}T\vec{v}=T^{-1}\vec{v}'\\
\vec{v}=T^{-1}\vec{v}'
\end{aligned}
$$

---

##  Inverse Matrices
$$
\begin{bmatrix}
0.5&0\\
0&1
\end{bmatrix}
\begin{bmatrix}
4\\
3
\end{bmatrix}=
\begin{bmatrix}
x\\
y
\end{bmatrix}\\
\begin{bmatrix}
2\\
3
\end{bmatrix}=
\begin{bmatrix}
x\\
y
\end{bmatrix}
$$

---

<!-- _class: imgh -->
####  Inverse Matrices
![bg contain](https://i.imgur.com/WJosNjg.png)

---

##  Finding the inverse matrix
$$
\left[
\begin{array}{ccc|ccc}
3&0&2&1&0&0\\
1&-2&2&0&1&0\\
-1&3&2&0&0&1
\end{array}
\right]
$$

---

##  Finding the inverse matrix
1. You can change the values of a row by multiplying all of the numbers in the row by a constant
2. You can change rows by adding the elements of other rows to it.

---

##  Finding the inverse matrix
$$
\left[
\begin{array}{ccc|ccc}
(3)&0&2&1&0&0\\
1&-2&2&0&1&0\\
-1&3&2&0&0&1
\end{array}
\right]
$$

---

##  Finding the inverse matrix
$$
\left[
\begin{array}{ccc|ccc}
1&0&\frac{2}{3}&\frac{1}{3}&0&0\\
1&-2&2&0&1&0\\
-1&3&2&0&0&1
\end{array}
\right]
\text{$R_1\to \frac{1}{3}R_1$}
$$

---

##  Finding the inverse matrix
$$
\left[
\begin{array}{ccc|ccc}
1&0&\frac{2}{3}&\frac{1}{3}&0&0\\
0&-2&\frac{4}{3}&-\frac{1}{3}&1&0\\
-1&3&2&0&0&1
\end{array}
\right]
\text{$R_2\to -R_1+R_2$}
$$

---

##  Finding the inverse matrix
$$
\left[
\begin{array}{ccc|ccc}
1&0&\frac{2}{3}&\frac{1}{3}&0&0\\
0&-2&\frac{4}{3}&-\frac{1}{3}&1&0\\
0&3&\frac{8}{3}&\frac{1}{3}&0&1
\end{array}
\right]
\text{$R_3\to R_1+R_3$}
$$

---

##  Finding the inverse matrix
$$
\left[
\begin{array}{ccc|ccc}
1&0&\frac{2}{3}&\frac{1}{3}&0&0\\
0&1&-\frac{2}{3}&\frac{1}{6}&-\frac{1}{2}&0\\
0&3&\frac{8}{3}&\frac{1}{3}&0&1
\end{array}
\right]
\text{$R_2\to -\frac{1}{2}R_2$}
$$

---

##  Finding the inverse matrix
$$
\left[
\begin{array}{ccc|ccc}
1&0&\frac{2}{3}&\frac{1}{3}&0&0\\
0&1&-\frac{2}{3}&\frac{1}{6}&-\frac{1}{2}&0\\
0&0&\frac{14}{3}&-\frac{1}{6}&\frac{3}{2}&1
\end{array}
\right]
\text{$R_3\to -3R_2+R_3$}
$$

---

##  Finding the inverse matrix
$$
\left[
\begin{array}{ccc|ccc}
1&0&\frac{2}{3}&\frac{1}{3}&0&0\\
0&1&-\frac{2}{3}&\frac{1}{6}&-\frac{1}{2}&0\\
0&0&1&-\frac{1}{28}&\frac{9}{28}&\frac{3}{14}
\end{array}
\right]
\text{$R_3\to \frac{3}{14}R_3$}
$$

---

##  Finding the inverse matrix
$$
\left[
\begin{array}{ccc|ccc}
1&0&0&\frac{5}{14}&-\frac{3}{14}&-\frac{1}{7}\\
0&1&-\frac{2}{3}&\frac{1}{6}&-\frac{1}{2}&0\\
0&0&1&-\frac{1}{28}&\frac{9}{28}&\frac{3}{14}
\end{array}
\right]
\text{$R_1\to -\frac{2}{3}R_3+R_1$}
$$

---

##  Finding the inverse matrix
$$
\left[
\begin{array}{ccc|ccc}
1&0&0&\frac{5}{14}&-\frac{3}{14}&-\frac{1}{7}\\
0&1&0&\frac{1}{7}&-\frac{2}{7}&\frac{1}{7}\\
0&0&1&-\frac{1}{28}&\frac{9}{28}&\frac{3}{14}
\end{array}
\right]
\text{$R_2\to \frac{2}{3}R_3+R_2$}
$$

---

##  Finding the inverse matrix
$$
\begin{bmatrix}
\frac{5}{14}&-\frac{3}{14}&-\frac{1}{7}\\
\frac{1}{7}&-\frac{2}{7}&\frac{1}{7}\\
-\frac{1}{28}&\frac{9}{28}&\frac{3}{14}
\end{bmatrix}
$$

---

<!-- _class: imgh -->
####  Finding the inverse matrix
![bg contain](https://i.imgur.com/ai5xiaq.png)

---

##  Minors and Cofactors
The **minor** of some element $a_{ij}$ of a square matrix $A$, denoted by $M_{ij}$ is the determinant of the submatrix formed by deleting the $i$th row and $j$th column of $A$

---

##  Minors and Cofactors
The **cofactor** of some element $a_{ij}$ of a square matrix $A$, denoted by $C_{ij}$ is calculated as:

---

##  Minors and Cofactors
$$
\begin{aligned}
C_{ij}=(-1)^{i+j}M_{ij}
\end{aligned}
$$

---

##  Minors and Cofactors
The **cofactor matrix** $C$ of some matrix $A$ is the matrix of $A$'s cofactors $C_{ij}$:

---

##  Minors and Cofactors
$$
\begin{aligned}
C = \begin{bmatrix}
C_{11}&C_{12}&C_{13}\\
C_{21}&C_{22}&C_{23}\\
C_{31}&C_{32}&C_{33}
\end{bmatrix}
\end{aligned}
$$

---

##  Minors and Cofactors
$$
\begin{aligned}
A^{-1} = \frac{1}{\det(A)}C^{T}
\end{aligned}
$$

---

##  Minors and Cofactors
$$
\begin{aligned}
A &= \begin{bmatrix}
3&0&2\\
1&-2&2\\
-1&3&2
\end{bmatrix}\\
A^{-1} &=\frac{1}{\det(A)}C^T\\
\end{aligned}
$$

---

##  Minors and Cofactors
$$
\begin{aligned}
A^{-1} &=\frac{1}{\det(A)}C^T\\
A^{-1} &=\frac{1}{-28}\begin{bmatrix}
-10 & -4 & 1 \\
6 & 8 & -9 \\
4 & -4 & -6 \\
\end{bmatrix}^T\\
A^{-1} &= \begin{bmatrix}
\frac{5}{14} & -\frac{3}{14} & -\frac{1}{7} \\
\frac{1}{7} & -\frac{2}{7} & \frac{1}{7} \\
-\frac{1}{28} & \frac{9}{28} & \frac{3}{14} \\
\end{bmatrix}
\end{aligned}
$$

---

##  Singular Matrices
1. There is one solution
2. There are infinitely many solutions
3. There are no solutions

---

##  Singular Matrices
These happen when the span of the transformed basis vectors (also called **column space**) has reduced dimension

---

##  Singular Matrices
$$
T=\begin{bmatrix}
-1&2\\
0.5&-1
\end{bmatrix}
$$

---

##  Singular Matrices
$$
\begin{aligned}
\begin{bmatrix}
-1&2\\
0.5&-1
\end{bmatrix}
\begin{bmatrix}
x\\
y
\end{bmatrix}=
\begin{bmatrix}
-1\\
3
\end{bmatrix}
\end{aligned}
$$

---

<!-- _class: imgh -->
####  Singular Matrices
![bg contain](https://i.imgur.com/lgZSIuw.png)

---

##  Singular Matrices
- Since a singular transformation **collapses** the space from an $n$-dimensional span to $m$-dimensional span (where $m<n$), the space is shrunk to 0
- Therefore, any singular matrix will have a **determinant of zero**

---

##  Singular Matrices
$$
\begin{aligned}
\det\begin{bmatrix}
-1&2\\
0.5&-1
\end{bmatrix} = (-1)(-1)-(2)(0.5) = 0
\end{aligned}
$$

---

<!-- _class: imgh -->
####  Singular Matrices
![bg contain](https://i.imgur.com/on6JXc0.png)

---

<!-- _class: imgh -->
####  Singular Matrices
![bg contain](https://i.imgur.com/JlBeMdK.gif)

---

##  Singular Matrices
We call non-invertible matrices such as the aforementioned transformation above, **singular**.

---

##  Matrices in the Perspective of Linear Algebra
- The main thesis of this series of lectures should not just be on the definitions of **matrices and their concepts**
- The focus of this lecture is the essence of these concepts both **numerically** and **visually**

---

##  Matrices in the Perspective of Linear Algebra
- A **vector** - an arbitrary member of some vector space, presented as an arrow from origin to a corresponding point in some $n$-dimensional space.
- An $n$-dimensional **square matrix** - defines some linear transformation, its values correspond to the new location of the basis vectors after the transformation.

----

##  Matrices in the Perspective of Linear Algebra
- **matrix multiplication** - composition of linear transformations. The product summarizes the linear transformations into one.
- **determinant** - the factor of scaling of the vector space during a transformation
- **matrix inverse** - the functional inverse of a matrix, reverses the transformation

---

##  Non-square Matrices
Let's talk about a class of matrices we haven't talked about before, a **non-square matrix**:

---

##  Non-square Matrices
$$
\begin{bmatrix}
2&2&-3 \\
-2& 1 & 0
\end{bmatrix}
$$

---

##  Non-square Matrices
- But the closest related concept for these matrices are **linear transformations**
- If these are indeed linear transformations, these matrices are meant to be **multiplied** to other vectors to apply some transformation.

---

##  Non-square Matrices
$$
\begin{bmatrix}
2&2&-3 \\
-2& 1 & 0
\end{bmatrix}
\vec{v} = \vec{v}'
$$

---

##  Non-square Matrices
- Since this is a $2 \times 3$ matrix, you can only multiply these with vectors of size **$3 \times 1$**
- But the interesting thing about this transformation is that it produces a vector of size **$2 \times 1$**.

---

##  Non-square Matrices
$$
\begin{bmatrix}
2&2&-3 \\
-2& 1 & 0
\end{bmatrix}
\begin{bmatrix}
2\\
0\\
1
\end{bmatrix} = \begin{bmatrix}
1\\
-4
\end{bmatrix}
$$

---

<!-- _class: imgh -->
####  Non-square Matrices
![bg contain](https://i.imgur.com/3YFU6iT.png)

---

##  Non-square Matrices
It is also a linear transformation, but it is specifically a transformation that **changes** the number of dimensions of the vector space

---

##  Non-square Matrices
$$
\begin{bmatrix}
2& 2& -3 \\
-2& 1& 0 \\
0& 0& 0&
\end{bmatrix}
\begin{bmatrix}
2\\
0\\
1
\end{bmatrix} = \begin{bmatrix}
1\\
-4 \\
0
\end{bmatrix}
$$

---

<!-- _class: imgh -->
####  Non-square Matrices
![bg contain](https://i.imgur.com/DcsmPGP.gif)

---

##  Non-square Matrices
$$
\begin{bmatrix}
1\\
-4 \\
0
\end{bmatrix}
$$

---

##  Non-square Matrices
$$
\begin{bmatrix}
1\\
-4
\end{bmatrix}
$$

---

##  Non-square Matrices
$$
\begin{bmatrix}
1\\
-4 \\
0
\end{bmatrix} \neq \begin{bmatrix}
1\\
-4
\end{bmatrix}
$$

---

##  Non-square Matrices
The transformation of any $n$-dimensional vector to less than $n$-dimensional space, is similar to producing the **projection** or shadow of the vector

---

##  Non-square Matrices
$$
T = \begin{bmatrix}
1&0&0 \\
0& 1 & 0
\end{bmatrix}
$$

---

<!-- _class: imgh -->
####  Non-square Matrices
![bg contain](https://raw.githubusercontent.com/HowDoIGitHelp/CMSC57CoursePack/master/Lecture%20Notes/Media/linear%20algebra/ProjectionXY.png)

---

##  Non-square Matrices
$$
T = \begin{bmatrix}
1 & 0 & 0 \\
0 & 0 & 1
\end{bmatrix}
$$

---

<!-- _class: imgh -->
####  Non-square Matrices
![bg contain](https://raw.githubusercontent.com/HowDoIGitHelp/CMSC57CoursePack/master/Lecture%20Notes/Media/linear%20algebra/ProjectionXZ.png)

---

##  Non-square Matrices
$$
T = \begin{bmatrix}
1&0&0 \\
0& \frac{\sqrt{2}}{2} & \frac{\sqrt{2}}{2}
\end{bmatrix}
$$

---

<!-- _class: imgh -->
####  Non-square Matrices
![bg contain](https://raw.githubusercontent.com/HowDoIGitHelp/CMSC57CoursePack/master/Lecture%20Notes/Media/linear%20algebra/ProjectionTilted.png)

---

##  Non-square Matrices
You can also transform a **2-dimensional** vector into a **3-dimensional vector**, to do this you need a $3 \times 2$ transformation matrix.

---

##  Non-square Matrices
$$
\begin{bmatrix}
3& 0\\
-1& -2\\
2& 1
\end{bmatrix}
\begin{bmatrix}
1\\
2
\end{bmatrix} = \begin{bmatrix}
3\\
-5\\
4
\end{bmatrix}
$$

---

<!-- _class: imgh -->
####  Non-square Matrices
![bg contain](https://i.imgur.com/3kUmLrK.png)

---

##  Non-square Matrices
- **the span that the basis vectors produce is still 2 dimensional**
- This is because there is no way for the vectors to be transformed with **extra dimensionality**.

---

##  Non-square Matrices
As a general rule, you can think of any $m \times n$ matrix as a transformation that transforms an **$n$-dimensional** vector into an **$m$-dimensional vector**.

---

The scalar product of $\vec{a}$ and $\vec{b}$, denoted by $\vec{a} \cdot{} \vec{b}$ is the product of the magnitude of $\vec{a}$ and the magnitude of the projected version of $\vec{b}$ onto $\vec{a}$.

---

<!-- _class: imgh -->
####  Scalar products
![bg contain](https://i.imgur.com/x8xJYfK.png)

---

##  Scalar products
$$
\begin{bmatrix}
a\\
b\\
\vdots\\
c 
\end{bmatrix} \cdot 
\begin{bmatrix}
x\\
y\\
\vdots\\
z 
\end{bmatrix} = ax+by+\cdots+cz
$$

---

##  Scalar products
It is the measure of **similarity** between two vectors, For example, given three vectors,

---

##  Scalar products
$$
\vec{a}=\begin{bmatrix}
1\\
2\\
\end{bmatrix}, 
\vec{b}=\begin{bmatrix}
1\\
2.5\\
\end{bmatrix},
\vec{c}=\begin{bmatrix}
2\\
1\\
\end{bmatrix}
$$

---

##  Scalar products
Is $\vec{a}$ **more similar** to $\vec{b}$ or to $\vec{c}$?

---

<!-- _class: imgh -->
####  Scalar products
![bg contain](https://i.imgur.com/J3SIWyN.png)

---

##  Scalar products
$$
\begin{aligned}
\vec{a}\cdot{}\vec{b}=6\\
\vec{a}\cdot{}\vec{c}=4
\end{aligned}
$$

---

##  Scalar products
This means that two vectors perpendicular to each other will have a scalar product of **zero** and two vectors pointing in the opposite direction will have a **negative** scalar product:

---

<!-- _class: imgh -->
####  Scalar products
![bg contain](https://i.imgur.com/LjyNd7V.png)

---

##  Scalar products
How does the scalar product relate to **linear transformations**?

---

##  Scalar products
And it turns out, a scalar product is merely a transformation of any vector to **one-dimensional space**:

---

##  Scalar products
$$
\begin{bmatrix}
u_x\\
u_y\\
\end{bmatrix} \cdot{}
\begin{bmatrix}
a\\
b\\
\end{bmatrix} = u_xa+u_yb
$$

---

##  Scalar products
$$
\begin{bmatrix}
u_x& u_y
\end{bmatrix}
\begin{bmatrix}
a\\
b\\
\end{bmatrix} = u_xa+u_yb
$$

---

##  Scalar products
When looking at, the scalar product of two $n \times 1$ vectors, you can imagine that one vector is **reduced** into the **one dimensional vector space**

---

##  Eigenvectors and Eigenvalues
$$
\begin{bmatrix}
3& 1\\
0&2
\end{bmatrix}
$$

---

<!-- _class: imgh -->
####  Eigenvectors and Eigenvalues
![bg contain](https://i.imgur.com/xsp3aHP.gif)

---

<!-- _class: imgh -->
####  Eigenvectors and Eigenvalues
![bg contain](https://i.imgur.com/AUH2KiH.png)

---

##  Eigenvectors and Eigenvalues
$$
\begin{aligned}
\begin{bmatrix}
3& 1\\
0&2
\end{bmatrix}
\begin{bmatrix}
-1\\
1
\end{bmatrix} &=
\begin{bmatrix}
-2\\
2
\end{bmatrix}=
2\begin{bmatrix}
-1\\
1
\end{bmatrix}\\ \begin{bmatrix}
3& 1\\
0&2
\end{bmatrix}
\begin{bmatrix}
1.5\\
0
\end{bmatrix} &=
\begin{bmatrix}
4.5\\
0
\end{bmatrix}=
3\begin{bmatrix}
1.5\\
0
\end{bmatrix}
\end{aligned}
$$

---

##  Eigenvectors and Eigenvalues
- These special vectors are called **eigenvectors**
- Each eigenvector is always accompanied by special scalar values called **eigenvalues**, which correspond to the factor of scaling for the transformation.

---

##  Eigenvectors and Eigenvalues
In fact **all** the vectors along the **span of the green vectors** are eigenvectors as well.

---

<!-- _class: imgh -->
####  Eigenvectors and Eigenvalues
![bg contain](https://i.imgur.com/5G2Bqa2.gif)

---

<!-- _class: imgh -->
####  Eigenvectors and Eigenvalues
![bg contain](https://i.imgur.com/rniMQb6.gif)

---

<!-- _class: imgh -->
####  Eigenvectors and Eigenvalues
![bg contain](https://i.imgur.com/5Cu3fyW.gif)

---

##  Eigenvectors and Eigenvalues
- Since eigenvectors are vectors that are **only** scaled as a result of the transformation, we can solve for $\vec{e}$ in the following equality
- The scalar value **$\lambda$** refers to the unknown eigenvalue.

---

##  Eigenvectors and Eigenvalues
$$
T\vec{e}=\lambda\vec{e}
$$

---

##  Eigenvectors and Eigenvalues
- Scalar times vector multiplication $\lambda \vec{e}$ can be written as a **linear transformation** instead
- **multiplying $\lambda I$ to $\vec{e}$**

---

##  Eigenvectors and Eigenvalues
$$
\begin{bmatrix}
\lambda& 0& \cdots& 0\\
0& \lambda& \cdots& 0\\
\vdots& \vdots& \ddots& \vdots\\
0& 0& \cdots& \lambda 
\end{bmatrix}
\vec{e}
$$

---

##  Eigenvectors and Eigenvalues
To solve for the unknowns, we can rewrite $T\vec{e}=\lambda\vec{e}$ into a s**olution from zero**:

---

##  Eigenvectors and Eigenvalues
$$
\begin{align*}
T\vec{e}&=\lambda I\vec{e}\\
T\vec{e}-\lambda I\vec{e}&=\vec{0}\\
(T-\lambda I)\vec{e}&=\vec{0}\\
\end{align*}
$$

---

##  Eigenvectors and Eigenvalues
- If you recall, a non-zero vector can only be transformed to zero if and only if the whole vector space has been **squished to zero itself**
- And this can only happen when the **determinant** of transformation is **zero**.

---

##  Eigenvectors and Eigenvalues
$$
\det(T-\lambda I)=\det(\begin{bmatrix}
t_{11}-\lambda& t_{12}& \cdots& t_{1n}\\
t_{21}& t_{22}-\lambda& \cdots& t_{2n}\\
\vdots& \vdots& \ddots& \vdots\\
t_{n1}& t_{n2}& \cdots& t_{nn}-\lambda 
\end{bmatrix}) = 0
$$

---

##  Eigenvectors and Eigenvalues
This means that we can find the eigenvalues of any transformation by finding the **lambdas** that reduces the determinant to **$0$**

---

##  Eigenvectors and Eigenvalues
$$
\begin{aligned}
\det(\begin{bmatrix}
a-\lambda& b\\
c& d-\lambda
\end{bmatrix})=0\\
(a-\lambda)(d-\lambda)-bc=0
\end{aligned}
$$

---

##  Eigenvectors and Eigenvalues
$$
\begin{aligned}
\det(\begin{bmatrix}
3-\lambda& 1\\
0& 2-\lambda
\end{bmatrix})&=0\\
(3-\lambda)(2-\lambda)-(1)(0)&=0\\
(3-\lambda)(2-\lambda)&=0\\
\\
\lambda &=2\\
\lambda &=3
\end{aligned}
$$

---

##  Eigenvectors and Eigenvalues
$$
\begin{aligned}
\begin{bmatrix}
3& 1\\
0&2
\end{bmatrix}
\vec{e} &=
2\vec{e}\\
\begin{bmatrix}
3& 1\\
0&2
\end{bmatrix}
\vec{e} &=
3\vec{e}
\end{aligned}
$$

---

##  Eigenvectors and Eigenvalues
$$
\begin{aligned}
\text{Eigenvectors for } &\lambda=2\\
3x +y &=2x\\
2y &= 2y\\
x+y&=0\\
x&=-y\\
&\begin{bmatrix}
u\\
-u
\end{bmatrix}
\end{aligned}
$$

---

##  Eigenvectors and Eigenvalues
$$
\begin{aligned}
\text{Eigenvectors for } &\lambda=3\\
3x+y &=3x\\
2y &= 3y\\
y&=0\\
&\begin{bmatrix}
v\\
0
\end{bmatrix}
\end{aligned}
$$

---

##  Eigenvectors and Eigenvalues
As you can see, the solutions for $\vec{e}$ is infinitely many, any vector of the form **$\begin{bmatrix}u\\-u\end{bmatrix}$** and any vector of the form **$\begin{bmatrix} v\\0\end{bmatrix}$** is an eigenvector.

---

##  Positive Definite Matrices and Positive Semidefinite Matrices
A symmetric matrix $A$ is said to be positive **semidefinite** if the scalar value $v^T A v$ is a positive number

