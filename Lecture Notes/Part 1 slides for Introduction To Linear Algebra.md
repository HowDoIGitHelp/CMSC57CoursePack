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

##  Matrices and Matrix Operations
A matrix is a **rectangular collection** of numbers

---

##  Matrices and Matrix Operations
$$
A=\begin{bmatrix}
4&2&-3 \\
11&\pi & 12
\end{bmatrix}
$$

---

##  Matrices and Matrix Operations
$$
A=\begin{bmatrix}
0.1&0.9&0.3 \\
0.4&0.5&0.6 \\
0.7&0.7&0.9
\end{bmatrix}
$$

---

<!-- _class: imgh -->
####  Matrices and Matrix Operations
![bg contain](https://raw.githubusercontent.com/HowDoIGitHelp/CMSC57CoursePack/master/Lecture%20Notes/Media/linear%20algebra/matrixImage.png)

---

##  Matrices and Matrix Operations
An **element** of a matrix is denoted by $a_{rc}$ which corresponds the element of matrix $a$ in the $r^{th}$ row and $c^{th}$ column

---

##  Matrices and Matrix Operations
$$
A=\begin{bmatrix}
a_{11}&a_{12}&a_{13} \\
a_{21}&a_{22}&a_{23} 
\end{bmatrix}
$$

---

##  Matrices and Matrix Operations
Matrices are also generally used to represent **systems of linear equations** for example:

---

##  Matrices and Matrix Operations
$$
\begin{aligned}
4x + 2y =12 \\
3x - 2y = 8
\end{aligned}
$$

---

##  Matrices and Matrix Operations
$$
\begin{bmatrix}
4&2\\
3&-28
\end{bmatrix}
\begin{bmatrix}
x\\
y
\end{bmatrix}=
\begin{bmatrix}
12\\
8
\end{bmatrix}
$$

---

how this works will be explained later

---

##  Matrix Addition
$$
A+B=\begin{bmatrix}
a_{11}+b_{11}&a_{12}+b_{12}&\dots&a_{1n}+b_{1n} \\
a_{21}+b_{21}&a_{22}+b_{22}&\dots&a_{2n}+b_{2n} \\
\vdots&\vdots&\ddots&\vdots \\
a_{m1}+b_{m1}&a_{m2}+b_{m2}&\dots&a_{mn}+b_{mn} 
\end{bmatrix}\\
$$

---

##  Matrix Addition
To get each element$(A+B)_{ij}$, you simply **add the corresponding elements**, $a_{11}+b_{11}$

---

##  Matrix Addition
$$
A+x=\begin{bmatrix}
a_{11}+x&a_{12}+x&\dots&a_{1n}+x \\
a_{21}+x&a_{22}+x&\dots&a_{2n}+x \\
\vdots&\vdots&\ddots&\vdots \\
a_{m1}+x&a_{m2}+x&\dots&a_{mn}+x 
\end{bmatrix}\\
$$

---

##  Matrix Multiplication
- **Matrix times matrix** multiplication works differently, let say $A$ is an $m \times k$ matrix and $B$ is a $k \times n$ matrix
- Their **cross product** $C=A \times B$ defined to be the matrix with each element:

---

##  Matrix Multiplication
$$
c_{ij}=a_{i1}b_{1j}+a_{i2}b_{2j}+\cdots+a_{ik}b_{kj}
$$

---

##  Matrix Multiplication
$$
A\times B=\begin{bmatrix}
a_{11}&a_{12}&\dots&a_{1n} \\
a_{21}&a_{22}&\dots&a_{2n} \\
\vdots&\vdots& &\vdots \\
a_{i1}&a_{i2}&\cdots&a_{in}\\
\vdots&\vdots& &\vdots \\
a_{m1}&a_{m2}&\dots&a_{mn} 
\end{bmatrix} \times
\begin{bmatrix}
b_{11}&b_{12}&\dots&b_{1j}&\dots&b_{1n} \\
b_{21}&b_{22}&\dots&b_{1j}&\dots&b_{2n} \\
\vdots&\vdots&\ &\vdots& &\vdots \\
b_{m1}&b_{m2}&\dots&b_{1j}&\dots&b_{mn} 
\end{bmatrix}=
\begin{bmatrix}
c_{11}&c_{12}&\dots&c_{1n} \\
c_{21}&c_{22}&\dots&c_{2n} \\
\vdots&\vdots&c_{ij}&\vdots \\
c_{m1}&c_{m2}&\dots&c_{mn} 
\end{bmatrix}\\
$$

---

##  Matrix Multiplication
**Scalar times matrix** multiplication works similar to scalar plus matrix addition:
$$
Ax=\begin{bmatrix}
a_{11}x&a_{12}x&\dots&a_{1n}x \\
a_{21}x&a_{22}x&\dots&a_{2n}x \\
\vdots&\vdots&\ddots&\vdots \\
a_{m1}x&a_{m2}x&\dots&a_{mn}x 
\end{bmatrix}\\
$$

---

##  Identity Matrix
The **identity matrix** $I_n$ of order $n$ is a special $n \times n$ (square) matrix such that its elements $\iota_{ij}=1$ if $i=j$ otherwise $\iota_{ij}=0$

---

##  Identity Matrix
$$
I=\begin{bmatrix}
1&0&\dots&0 \\
0&1&\dots&0 \\
\vdots&\vdots&\ddots&\vdots \\
0&0&\dots&1
\end{bmatrix}\\
$$
This matrix is special because, for any $m\times n$ matrix $A$,
$$
AI_n=I_mA=A
$$

---

##  Identity Matrix
**Powers of square matrices** can be defined such that:

---

##  Identity Matrix
$$
\begin{aligned}
A^0&=I_n\\
A^r&=A\times A \times \cdots \times A
\end{aligned}
$$

---

##  Transpose of a Matrix
- The elements of **$A^T$, $t_{ij}=a_{ji}$**
- Therefore the transpose of a matrix is the same matrix but the rows and columns are **interchanged**.

---

##  Transpose of a Matrix
$$
\begin{bmatrix}
4&2&-3 \\
11&\pi & 12
\end{bmatrix}^T=
\begin{bmatrix}
4&11\\
2&\pi\\
-3&12
\end{bmatrix}
$$

---

##  Transpose of a Matrix
A, square matrix $A$ is said to be **symmetric** if $A^T = A$

---

##  Vectors
The foundation of linear algebra is the concept of a **vector**

---

##  Vectors
For a physics student, a vector is defined by **direction** and **magnitude**:

---

<!-- _class: imgh -->
####  Vectors
![bg contain](https://i.imgur.com/q0K0gBO.png)

---

##  Vectors
For a computer science student, a vector is just an **ordered collection of numbers**

---

##  Vectors
$$
\vec{v}=\begin{bmatrix}
1\\
2\\
\end{bmatrix}
$$

---

##  Vectors
- A vector in a CS students point of view can be thought of as a **coordinate list** specifying the destination of an arrow
- In this case the vector $\vec{v}$ can be thought of as the **arrow** pointing from the origin, $(0,0,0)$ to the point $(1,3,2)$.

---

To differentiate vectors and coordinates, vectors are written as single-column matrices while coordinates are written as ordered tuples.

---

##  Vector Addition
Vectors can be added to each other which also **add** their corresponding arrows.

---

##  Vector Addition
$$
\begin{bmatrix}
3\\
0.5
\end{bmatrix}+
\begin{bmatrix}
0.5\\
-2
\end{bmatrix}=
\begin{bmatrix}
3.5\\
-1.5
\end{bmatrix}
$$

---

<!-- _class: imgh -->
####  Vector Addition
![bg contain](https://i.imgur.com/05FCkBW.png)

---

<!-- _class: imgh -->
####  Vector Addition
![bg contain](https://i.imgur.com/liCTYcO.png)

---

##  Vector  Multiplication
Vectors can also be multiplied with **scalar** values which will scale their corresponding arrows

---

##  Vector  Multiplication
$$
\vec{v}=\begin{bmatrix}
3\\
0.5
\end{bmatrix}
$$

---

<!-- _class: imgh -->
####  Vector  Multiplication
![bg contain](https://i.imgur.com/3Wn0X9s.png)

---

##  Vector  Multiplication
The vector **scaled** by a factor of **2**:

---

##  Vector  Multiplication
$$
2\vec{v}=2\begin{bmatrix}
3\\
0.5
\end{bmatrix}=\begin{bmatrix}
6\\
1
\end{bmatrix}
$$

---

<!-- _class: imgh -->
####  Vector  Multiplication
![bg contain](https://i.imgur.com/Js9YgxV.png)

---

##  Vector  Multiplication
Scaled by a factor of **$-1$**.

---

##  Vector  Multiplication
$$
-1\vec{v}=-1\begin{bmatrix}
3\\
0.5
\end{bmatrix}=\begin{bmatrix}
-3\\
-.5
\end{bmatrix}
$$

---

<!-- _class: imgh -->
####  Vector  Multiplication
![bg contain](https://i.imgur.com/TzgiysM.png)

---

Scalars are called scalars because they **scale** the vectors.

---

##  Vector  Multiplication
These operations also work on **3 dimensional vectors**

---

##  Vector  Multiplication
$$
\begin{bmatrix}
1\\
3\\
1
\end{bmatrix}+
\begin{bmatrix}
2\\
1\\
-3
\end{bmatrix}=
\begin{bmatrix}
3\\
4\\
-2
\end{bmatrix}
$$

---

<!-- _class: imgh -->
####  Vector  Multiplication
![bg contain](https://i.imgur.com/b0iLgcq.png)

---

##  Basis Vectors
- To generalize vectors and vector operations, linear algebra makes use of **basis vectors** which are unit vectors along the $x$ and $y$ axis of a Cartesian plane
- We call these vectors, **$\hat{\imath}$** and **$\hat{\jmath}$** respectively

---

##  Basis Vectors
$$
\hat{\imath}=\begin{bmatrix}
1\\
0
\end{bmatrix}
,
\hat{\jmath}=\begin{bmatrix}
0\\
1
\end{bmatrix}
,
$$

---

<!-- _class: imgh -->
####  Basis Vectors
![bg contain](https://i.imgur.com/iOm3oC6.png)

---

##  Basis Vectors
Basis vectors are special because you can **define** new vectors vectors based on the the definitions of the basis

---

##  Basis Vectors
$$
\vec{v}=3\hat{\imath}+2\hat{\jmath}
$$

---

##  Basis Vectors
$$
\begin{aligned}
\vec{v}=3\begin{bmatrix}
1\\
0
\end{bmatrix}+
2\begin{bmatrix}
0\\
1
\end{bmatrix}=
\begin{bmatrix}
3\\
2
\end{bmatrix}
\end{aligned}
$$

---

<!-- _class: imgh -->
####  Basis Vectors
![bg contain](https://i.imgur.com/j2Eyg10.png)

---

<!-- _class: imgh -->
####  Basis Vectors
![bg contain](https://i.imgur.com/4K4u8Uj.png)

---

<!-- _class: imgh -->
####  Basis Vectors
![bg contain](https://raw.githubusercontent.com/HowDoIGitHelp/CMSC57CoursePack/master/Lecture%20Notes/Media/linear%20algebra/3dBasisVectors.gif)

---

##  Basis Vectors
$$
\vec{u}=\begin{bmatrix}
2\\
0
\end{bmatrix}
,
\vec{w}=\begin{bmatrix}
1\\
1
\end{bmatrix}
$$

---

<!-- _class: imgh -->
####  Basis Vectors
![bg contain](https://i.imgur.com/oVCJWTY.png)

---

##  Basis Vectors
$$
\vec{v}=3\begin{bmatrix}
2\\
0
\end{bmatrix}+
2\begin{bmatrix}
1\\
1
\end{bmatrix}=
\begin{bmatrix}
8\\
2
\end{bmatrix}
$$

---

<!-- _class: imgh -->
####  Basis Vectors
![bg contain](https://i.imgur.com/oFuIth1.png?1)

---

<!-- _class: imgh -->
####  Span
![bg contain](https://i.imgur.com/3xdCnbU.png)

---

##  Span
For the set of vectors $\{\hat{\imath},\hat{\jmath}\}$ , you can generate **all** of the possible vectors in the 2 dimensional vector space .

---

##  Span
You can also generate **all** of the possible vectors in the 2-dimensional vector space using the basis vectors:

---

##  Span
$$
\{\begin{bmatrix}
2\\
0
\end{bmatrix},\begin{bmatrix}
1\\
1
\end{bmatrix}\}
$$

---

<!-- _class: imgh -->
####  Span
![bg contain](https://i.imgur.com/JGSJuQY.png)

---

##  Span
$$
\{\vec{r}=\begin{bmatrix}
-0.5\\
-1
\end{bmatrix},\vec{b}=\begin{bmatrix}
1\\
2
\end{bmatrix}\}
$$

---

<!-- _class: imgh -->
####  Span
![bg contain](https://i.imgur.com/cWsVAE6.png)

---

##  Span
- You **can't** generate the purple vector since one of the basis vectors you are using is **redundant**
- It is redundant in the sense that the $\vec{r}$ is just a **scaled version** on of $\vec{b}$ and vice versa

---

##  Span
$$
\begin{aligned}
\vec{r}=-0.5\vec{b}\\
\vec{b}=-2\vec{r}
\end{aligned}
$$

---

<!-- _class: imgh -->
####  Span
![bg contain](https://i.imgur.com/bg7MqpT.png)

---

##  Span
- We call $\vec{r}$ and $\vec{b}$ and any set of vectors that has some kind of redundancy as  **linearly dependent**
- The basis vectors defined earlier,  $\{\hat{\imath},\hat{\jmath}\}$ , and  $\{\vec{u},\vec{w}\}$ as **linearly independent**.

---

<!-- _class: imgh -->
####  Span
![bg contain](https://i.imgur.com/St7zTWV.png)

---

##  Span
Linear dependence in three dimensions can result to spans that describe a **plane**:
$$
\{
\begin{bmatrix}
1\\1\\0
\end{bmatrix},
\begin{bmatrix}
0.5\\0.5\\0
\end{bmatrix},
\begin{bmatrix}
0\\0\\1
\end{bmatrix}
\}
$$

---

<!-- _class: imgh -->
####  Span
![bg contain](https://i.imgur.com/E6P3pqF.png)

---

##  Span
$$
\{
\begin{bmatrix}
1\\1\\0
\end{bmatrix},
\begin{bmatrix}
0\\0\\1
\end{bmatrix},
\begin{bmatrix}
-1\\-1\\0.5
\end{bmatrix}
\}
$$

---

<!-- _class: imgh -->
####  Span
![bg contain](https://raw.githubusercontent.com/HowDoIGitHelp/CMSC57CoursePack/master/Lecture%20Notes/Media/linear%20algebra/span3dLinDep.png)

