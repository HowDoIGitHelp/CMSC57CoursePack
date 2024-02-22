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

<!-- _class: imgh -->
####  Linear Transformations and Matrix Multiplication
![bg contain](https://raw.githubusercontent.com/HowDoIGitHelp/CMSC57CoursePack/master/Lecture%20Notes/Media/linear%20algebra/spanTransform.gif)

---

##  Linear Transformations
**Linear Transformations** are special transformations where the distortion of the vector space follows these rules:

---

##  Linear Transformations
1. The origin should not move
2. Parallel lines stay parallel
3. Straight lines stay straight

---

##  Linear Transformations
It turns out all transformations that satisfy the above rules can be perfectly described by watching how the **basis vectors** are transformed

---

<!-- _class: imgh -->
####  Linear Transformations
![bg contain](https://i.imgur.com/f2GmdKv.png)

---

##  Linear Transformations
- new $\hat{\imath}$ (red vector) :$\hat{\imath}'=\begin{bmatrix}0\\1\end{bmatrix}$

-  new $\hat{\jmath}$ (blue vector): $\hat{\jmath}'=\begin{bmatrix}-1\\0\end{bmatrix}$

- Green vector: $1\begin{bmatrix}0\\1\end{bmatrix}+1\begin{bmatrix}-1\\0\end{bmatrix}=\begin{bmatrix}-1\\1\end{bmatrix}$




----

##  Linear Transformations
- Brown vector: $2\begin{bmatrix}0\\1\end{bmatrix}+1\begin{bmatrix}-1\\0\end{bmatrix}=\begin{bmatrix}-1\\2\end{bmatrix}$

- Yellow vector: $-2\begin{bmatrix}0\\1\end{bmatrix}+0.5\begin{bmatrix}-1\\0\end{bmatrix}=\begin{bmatrix}-0.5\\-2\end{bmatrix}$




----

##  Linear Transformations
- Black vector: $1\begin{bmatrix}0\\1\end{bmatrix}+-2\begin{bmatrix}-1\\0\end{bmatrix}=\begin{bmatrix}2\\1\end{bmatrix}$

---

##  Linear Transformations
- All of the other vector values after the transformation is basically **scaled versions** of the new basis vectors in the same way that the pretransformed vector values are combinations of the original basis vectors
- This means that any 2-dimensional linear transformation can be represented by 4 numbers, which we can write as a **matrix**, where each column corresponds to a basis vector

---

##  Linear Transformations
$$
T=\begin{bmatrix}
0&-1\\
1&0
\end{bmatrix}
$$

---

##  Linear Transformations
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

##  Determinant
If the determinant of the transformation is **zero**, it means that the transformation has **compressed** the vector space to the point where the area or volume is zero:

---

##  Determinant
$$
\begin{aligned}
\begin{bmatrix}
3 & 0 & -1.5 \\
-1 & -2 & 2.5 \\
2 & 1 & -2 \\
\end{bmatrix}
\end{aligned}
$$

---

<!-- _class: imgh -->
####  Determinant
![bg contain](https://raw.githubusercontent.com/HowDoIGitHelp/CMSC57CoursePack/master/Lecture%20Notes/Media/linear%20algebra/3detTransformFlat.gif)

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

