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
And spans that describe a **line**:
$$
\{
\begin{bmatrix}
1\\1\\0
\end{bmatrix},
\begin{bmatrix}
0.5\\0.5\\0
\end{bmatrix},
\begin{bmatrix}
-1\\-1\\0
\end{bmatrix}
\}
$$

---

<!-- _class: imgh -->
####  Span
![bg contain](https://i.imgur.com/iI1ebqI.png)

---

##  Linear Transformations and Matrix Multiplication
- A **transformation** is basically a function that converts one vector to another vector
- For example the transformation **$f$** can be defined as $f(\vec{x})=3\vec{x}$
- You can think of a transformation visually as the **distortion** of the entire vector space

---

<!-- _class: imgh -->
####  Linear Transformations and Matrix Multiplication
![bg contain](https://i.imgur.com/69NIHZF.png)

---

<!-- _class: imgh -->
####  Linear Transformations and Matrix Multiplication
![bg contain](https://i.imgur.com/uZbFBE3.png)

---

##  Liner Transformations
**Linear Transformations** are special transformations where the distortion of the vector space follows these rules:

---

##  Liner Transformations
1. The origin should not move
2. Parallel lines stay parallel
3. Straight lines stay straight

---

##  Liner Transformations
It turns out all transformations that satisfy the above rules can be perfectly described by watching how the **basis vectors** are transformed

---

<!-- _class: imgh -->
####  Liner Transformations
![bg contain](https://i.imgur.com/f2GmdKv.png)

---

##  Liner Transformations
- new $\hat{\imath}$ (red vector) :$\hat{\imath}'=\begin{bmatrix}0\\1\end{bmatrix}$

-  new $\hat{\jmath}$ (blue vector): $\hat{\jmath}'=\begin{bmatrix}-1\\0\end{bmatrix}$

- Green vector: $1\begin{bmatrix}0\\1\end{bmatrix}+1\begin{bmatrix}-1\\0\end{bmatrix}=\begin{bmatrix}-1\\1\end{bmatrix}$




----

##  Liner Transformations
- Brown vector: $2\begin{bmatrix}0\\1\end{bmatrix}+1\begin{bmatrix}-1\\0\end{bmatrix}=\begin{bmatrix}-1\\2\end{bmatrix}$

- Yellow vector: $-2\begin{bmatrix}0\\1\end{bmatrix}+0.5\begin{bmatrix}-1\\0\end{bmatrix}=\begin{bmatrix}-0.5\\-2\end{bmatrix}$




----

##  Liner Transformations
- Black vector: $1\begin{bmatrix}0\\1\end{bmatrix}+-2\begin{bmatrix}-1\\0\end{bmatrix}=\begin{bmatrix}2\\1\end{bmatrix}$

---

##  Liner Transformations
- All of the other vector values after the transformation is basically **scaled versions** of the new basis vectors in the same way that the pretransformed vector values are combinations of the original basis vectors
- This means that any 2-dimensional linear transformation can be represented by 4 numbers, which we can write as a **matrix**, where each column corresponds to a basis vector

---

##  Liner Transformations
$$
T=\begin{bmatrix}
0&-1\\
1&0
\end{bmatrix}
$$

---

##  Liner Transformations
$$
T=\begin{bmatrix}
a&b\\
c&d
\end{bmatrix}
$$

---

##  Linear Transformation and Matrix Multiplication
$$
x\begin{bmatrix}
a\\
c
\end{bmatrix}+
y\begin{bmatrix}
b\\
d
\end{bmatrix}=
\begin{bmatrix}
ax+by\\
cx+dy
\end{bmatrix}
$$

---

##  Linear Transformation and Matrix Multiplication
$$
\begin{bmatrix}
a&b\\
c&d
\end{bmatrix}
\begin{bmatrix}
x\\
y
\end{bmatrix}=
\begin{bmatrix}
ax+by\\
cx +dy
\end{bmatrix}
$$

---

##  Linear Transformation and Matrix Multiplication
$$
f(\vec{v})=T\vec{v}
$$

---

##  Horizontal Stretch
$$
T=\begin{bmatrix}
2&0\\
0&1
\end{bmatrix}
$$

---

<!-- _class: imgh -->
####  Horizontal Stretch
![bg contain](https://i.imgur.com/wzkoUEB.png)

---

<!-- _class: imgh -->
####  Horizontal Stretch
![bg contain](https://raw.githubusercontent.com/HowDoIGitHelp/CMSC57CoursePack/master/Lecture%20Notes/Media/linear%20algebra/stretchx.gif)

---

##  Vertical Stretch
$$
T=\begin{bmatrix}
1&0\\
0&2
\end{bmatrix}
$$

---

<!-- _class: imgh -->
####  Vertical Stretch
![bg contain](https://raw.githubusercontent.com/HowDoIGitHelp/CMSC57CoursePack/master/Lecture%20Notes/Media/linear%20algebra/stretchy.gif)

---

##  Horizontal Shear
$$
T=\begin{bmatrix}
1&1\\
0&1
\end{bmatrix}
$$

---

<!-- _class: imgh -->
####  Horizontal Shear
![bg contain](https://i.imgur.com/sMJ3UVz.png)

---

<!-- _class: imgh -->
####  Horizontal Shear
![bg contain](https://raw.githubusercontent.com/HowDoIGitHelp/CMSC57CoursePack/master/Lecture%20Notes/Media/linear%20algebra/shearx.gif)

---

##  Vertical Shear
$$
T=\begin{bmatrix}
1&0\\
1&1
\end{bmatrix}
$$

---

<!-- _class: imgh -->
####  Vertical Shear
![bg contain](https://i.imgur.com/93vDE7u.png)

---

<!-- _class: imgh -->
####  Vertical Shear
![bg contain](https://raw.githubusercontent.com/HowDoIGitHelp/CMSC57CoursePack/master/Lecture%20Notes/Media/linear%20algebra/sheary.gif)

---

##  flip with respect to x-axis
$$
T=\begin{bmatrix}
1&0\\
0&-1
\end{bmatrix}
$$

---

<!-- _class: imgh -->
####  flip with respect to x-axis
![bg contain](https://i.imgur.com/PAyGi6M.png)

---

<!-- _class: imgh -->
####  flip with respect to x-axis
![bg contain](https://raw.githubusercontent.com/HowDoIGitHelp/CMSC57CoursePack/master/Lecture%20Notes/Media/linear%20algebra/flip-x.gif)

---

##  Three Dimensional Transformations
$$
T=\begin{bmatrix}
1&1&1\\
0&1&0\\
0&0&1
\end{bmatrix}
$$

---

<!-- _class: imgh -->
####  Three Dimensional Transformations
![bg contain](https://i.imgur.com/Gc9orDr.png)

---

##  Composing transformations
- You can combine transformations by performing transformations in a **sequence**
- For example, you can **combine** a horizontal stretch with a vertical stretch which can be defined as a new transformation.

---

<!-- _class: imgh -->
####  Composing transformations
![bg contain](https://i.imgur.com/SXGYAXL.png)

---

##  Composing transformations
Since you are applying one transformation after the other, the overall transformation can be defined as a **composition** of the horizontal stretch transformation inside a vertical stretch transformation.

---

##  Composing transformations
$$
\begin{aligned}
f(\vec{v})=\begin{bmatrix}
2&0\\0&1
\end{bmatrix}\vec{v}\\
g(\vec{v})=\begin{bmatrix}
1&0\\0&2
\end{bmatrix}\vec{v}\\
\\
g(f(\vec{v}))=\begin{bmatrix}
1&0\\0&2
\end{bmatrix}\Bigg(\begin{bmatrix}
2&0\\0&1
\end{bmatrix}\vec{v} \Bigg)
\end{aligned}
$$

---

##  Composing transformations
$$
g(f(\vec{v}))=\begin{bmatrix}
1&0\\0&2
\end{bmatrix}\Bigg(\begin{bmatrix}
2&0\\0&1
\end{bmatrix}\vec{v} \Bigg)=
\begin{bmatrix}
2&0\\0&2
\end{bmatrix}\vec{v}
$$

---

##  Composing transformations
$$
\begin{bmatrix}
1&0\\0&2
\end{bmatrix}\begin{bmatrix}
2&0\\0&1
\end{bmatrix}=\begin{bmatrix}
2&0\\0&2
\end{bmatrix}
$$

---

##  Composing transformations
$$
\begin{aligned}
f(\vec{v})&=T_1\vec{v}\\
g(\vec{v})&=T_2\vec{v}\\
g(f(\vec{v}))&=T_2T_1\vec{v}
\end{aligned}
$$

---

<!-- _class: imgh -->
####  Composing transformations
![bg contain](https://i.imgur.com/4a7CgjS.png)

---

<!-- _class: imgh -->
####  Composing transformations
![bg contain](https://i.imgur.com/1uE8E2H.png)

---

##  Determinant
One of the important things you can study about a given linear transformation is how it generally **stretches** or **compresses** the space

---

##  Determinant
$$
T=\begin{bmatrix}
2&0\\
0&1
\end{bmatrix}
$$

---

<!-- _class: imgh -->
####  Determinant
![bg contain](https://i.imgur.com/SsYoauQ.png)

---

<!-- _class: imgh -->
####  Determinant
![bg contain](https://i.imgur.com/eFx883y.png)

---

<!-- _class: imgh -->
####  Determinant
![bg contain](https://i.imgur.com/yag8kBB.png)

---

##  Determinant
The factor stretching/compression of the entire space that occurs during a transformation has a special name called the **determinant** of a transformation

---

##  Determinant
$$
\begin{aligned}
T&=\begin{bmatrix}
a&b\\
c&d
\end{bmatrix}\\
\det\Bigg(\begin{bmatrix}
a&b\\
c&d
\end{bmatrix}\Bigg)&=ad-bc
\end{aligned}
$$

---

##  Determinant
This formula can be derived by calculating the **area** of the resulting yellow parallelogram, which is the transformed version of the yellow square

---

##  Determinant
The determinant of a 3 dimensional transformation is the factor of stretching/compression of the **volume** of the unit cube to the parallelepiped:

---

<!-- _class: imgh -->
####  Determinant
![bg contain](https://raw.githubusercontent.com/HowDoIGitHelp/CMSC57CoursePack/master/Lecture%20Notes/Media/linear%20algebra/transform3dDet.png)

---

<!-- _class: imgh -->
####  Determinant
![bg contain](https://raw.githubusercontent.com/HowDoIGitHelp/CMSC57CoursePack/master/Lecture%20Notes/Media/linear%20algebra/transform3dDet.gif)

---

<!-- _class: imgh -->
####  Determinant
![bg contain](https://raw.githubusercontent.com/HowDoIGitHelp/CMSC57CoursePack/master/Lecture%20Notes/Media/linear%20algebra/polyhedraTransform.gif)

---

##  Determinant
$$
\begin{aligned}
\det\Bigg(\begin{bmatrix}
a&b&c\\
d&e&f\\
g&h&i
\end{bmatrix}\Bigg)\\=a\det\Bigg(\begin{bmatrix}
e&f\\
h&i
\end{bmatrix}\Bigg)-
b\det\Bigg(\begin{bmatrix}
d&f\\
g&i
\end{bmatrix}\Bigg)+
c\det\Bigg(\begin{bmatrix}
d&e\\
g&h
\end{bmatrix}\Bigg)
\end{aligned}
$$

---

<!-- _class: imgh -->
####  Determinant
![bg contain](https://i.imgur.com/OJUub1V.png)

---

##  Determinant
$$
\begin{bmatrix}
-1&2\\
1&1
\end{bmatrix}
$$

---

##  Determinant
$$
\det\Bigg(\begin{bmatrix}
-1&2\\
1&1
\end{bmatrix}\Bigg)=-1(1)-2(1)=-3
$$

---

##  Determinant
- This means that the factor of stretching/compression for the transformation is **$-3$**
- The **sign** of the determinant has meaning
- If the determinant is negative it means that the space is **compressed beyond 0** to the point that the space is flipped.

---

<!-- _class: imgh -->
####  Determinant
![bg contain](https://raw.githubusercontent.com/HowDoIGitHelp/CMSC57CoursePack/master/Lecture%20Notes/Media/linear%20algebra/transform2dDetNegative.gif)

---

##  Determinant
Flipping space in the 3 dimensions means that the basis vectors cannot follow **right hand rule**.

---

<!-- _class: imgh -->
####  Determinant
![bg contain](https://raw.githubusercontent.com/HowDoIGitHelp/CMSC57CoursePack/master/Lecture%20Notes/Media/linear%20algebra/transform3dDetNegative.gif)

---

<!-- _class: imgh -->
####  Determinant
![bg contain](https://i.imgur.com/N2B76Be.png)

---

##  Inverse Matrices
$$
\begin{aligned}
2x+0y=4\\
0x+y=3
\end{aligned}
$$

---

##  Inverse Matrices
$$
\begin{bmatrix}
2&0\\
0&1
\end{bmatrix}
\begin{bmatrix}
x\\
y
\end{bmatrix}=
\begin{bmatrix}
4\\
3
\end{bmatrix}
$$

---

##  Inverse Matrices
You can think of the **coefficients** for $x$ and $y$ as the numbers that make up the **transformation matrix**, $T$

---

##  Inverse Matrices
$$
T\vec{v}=\vec{v}'
$$

---

##  Inverse Matrices
To find the solutions of this system of linear equations, you need to look for the **original value** of $\vec{v}'$ **before** the transformation

---

<!-- _class: imgh -->
####  Inverse Matrices
![bg contain](https://i.imgur.com/bafutAN.png)

---

##  Inverse Matrices
- To do this you need to make use of a special matrix related to the transformation matrix $T$, called the **inverse matrix**, $T^{-1}$
- This matrix serves as the inverse of the transformation $T$ such that, **combining $T$ and $T^{-1}$** results to the original locations of the basis, or the identity matrix

---

##  Inverse Matrices
$$
T^{-1}T=I
$$

---

##  Inverse Matrices
$$
\begin{bmatrix}
0.5&0\\
0&1
\end{bmatrix}
\begin{bmatrix}
2&0\\
0&1
\end{bmatrix}=
\begin{bmatrix}
1&0\\
0&1
\end{bmatrix}
$$

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
\tag{$R_1\to \frac{1}{3}R_1$}
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
\tag{$R_2\to -R_1+R_2$}
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
\tag{$R_3\to R_1+R_3$}
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
\tag{$R_2\to -\frac{1}{2}R_2$}
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
\tag{$R_3\to -3R_2+R_3$}
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
\tag{$R_3\to \frac{3}{14}R_3$}
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
\tag{$R_1\to -\frac{2}{3}R_3+R_1$}
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
\tag{$R_2\to \frac{2}{3}R_3+R_2$}
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
A = \begin{bmatrix}
3&0&2\\
1&-2&2\\
-1&3&2
\end{bmatrix}\\
C_{11} = (-1)^{1+1}\det\begin{bmatrix}-2&2\\3&2 \end{bmatrix}, C_{12} = (-1)^{1+2}\det\begin{bmatrix}1&2\\-1&2 \end{bmatrix}, C_{13} = (-1)^{1+3}\det\begin{bmatrix}1&-2\\-1&3 \end{bmatrix}
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
$$

---

<!-- _class: imgh -->
####  Singular Matrices
![bg contain](https://i.imgur.com/lgZSIuw.png)

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
We call non-invertible matrices such as the transformation above, **singular**.

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
As you can see, the solutions for $\vec{e}$ is infinitely many, any vector of the form **$\begin{bmatrix}u\\-u\end{bmatrix}$** and any vector of the form **$\begin{bmatrix} v\\0\end{bmatrix}$**.

---