# Working with Matrices

MATLAB is the *matrix laboratory* and the programming language is designed to work efficiently with matrices. Let's take a look at how to create matrices and how to perform matrix computations.

:::{seealso}
Check out the MATLAB documentation to learn more about [matrices](https://www.mathworks.com/help/matlab/matrices-and-arrays.html).
:::

## Manual Construction

The simplest way to construct a matrix is to use square brackets `[ ... ]` and manually type the entries separated by a space (or comma `,`) with rows separated by a semicolon `;`. For example, let's create the matrix

$$
A = \begin{bmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \\ 7 & 8 & 9 \end{bmatrix}
$$

```none
A = [1 2 3; 4 5 6; 7 8 9]
```

<pre class="output">
A =

     1     2     3
     4     5     6
     7     8     9

</pre>

## Construction Functions

There are functions such as `zeros`, `ones`, `eye` and `diag` for constructing matrices. For example, create a 2 by 5 matrix of zeros:

```none
zeros(2,5)
```

<pre class="output">
ans =

     0     0     0     0     0
     0     0     0     0     0

</pre>

Create the identity matrix of size 6:

```none
eye(6)
```

<pre class="output">
ans =

     1     0     0     0     0     0
     0     1     0     0     0     0
     0     0     1     0     0     0
     0     0     0     1     0     0
     0     0     0     0     1     0
     0     0     0     0     0     1

</pre>

Create a 3 by 2 matrix of ones:

```none
ones(3,2)
```

<pre class="output">
ans =

     1     1
     1     1
     1     1

</pre>

Create a diagonal matrix:

```none
diag([1 2 3])
```

<pre class="output">
ans =

     1     0     0
     0     2     0
     0     0     3

</pre>

Create a matrix with entries on the upper diagonal:

```none
diag([1 2 3],1)
```

<pre class="output">
ans =

     0     1     0     0
     0     0     2     0
     0     0     0     3
     0     0     0     0

</pre>

Create a matrix with entries on the lower diagonal:

```none
diag([1 2 3],-1)
```

<pre class="output">
ans =

     0     0     0     0
     1     0     0     0
     0     2     0     0
     0     0     3     0

</pre>

## Concatenation

We can also use the square brackets to concatenate vectors and matrices. For example, create two column vectors and put them into the columns of a matrix:

```none
c1 = [1; 2];
c2 = [3; 4];
A = [c1 c2]
```

<pre class="output">
A =

     1     3
     2     4

</pre>

Create two row vectors and put them into the rows of a matrix:

```none
r1 = [0 -1];
r2 = [5 7];
A = [r1; r2]
```

<pre class="output">
A =

     0    -1
     5     7

</pre>

Concatenate matrices to create the block matrix

$$
A = \left[ \begin{array}{rrrr} 1 & \phantom{+}1 & 0 & 0 \\ 1 & 1 & 0 & 0 \\ 0 & 0 & -1 & -1 \\ 0 & 0 & -1 & -1 \end{array} \right]
$$

```none
A = [ones(2,2) zeros(2,2); zeros(2,2) -ones(2,2)]
```

<pre class="output">
A =

     1     1     0     0
     1     1     0     0
     0     0    -1    -1
     0     0    -1    -1

</pre>

## Addition and Multiplication

Use operators `+` and `-` for matrix addition and subtraction, and `*` for scalar multiplication. For example, let's use `eye`, `ones`, `diag`, matrix addition and scalar multiplication to construct the matrix:

$$
A = \left[ \begin{array}{rrrrr}
2 & -1 & 0 & 0 & 0 \\
-1 & 2 & -1 & 0 & 0 \\
0 & -1 & 2 & -1 & 0 \\
0 & 0 & -1 & 2 & -1 \\
0 & 0 & 0 & -1 & 2 \end{array} \right]
$$

```none
N = 4;
A = 2*eye(N+1) - diag(ones(1,N),1) - diag(ones(1,N),-1)
```

<pre class="output">
A =

     2    -1     0     0     0
    -1     2    -1     0     0
     0    -1     2    -1     0
     0     0    -1     2    -1
     0     0     0    -1     2

</pre>

Use the operator `*` for matrix multiplication. For example, let's compute $A \mathbf{x}$ where $A$ is the matrix above and $\mathbf{x}$ is the vector:

$$
\mathbf{x} = \begin{bmatrix} 1 \\ 1 \\ 1 \\ 1 \\ 1 \end{bmatrix}
$$

```none
x = ones(N+1,1);
A*x
```

<pre class="output">
ans =

     1
     0
     0
     0
     1

</pre>


## Indexing

Access the entry of matrix $A$ at row $i$ and column $j$ using the syntax `A(i,j)`. For example, consider the matrix:

```none
A = [1 0 -2; 7 5 -1; 3 4 -8]
```

<pre class="output">
A =
     1     0    -2
     7     5    -1
     3     4    -8

</pre>

Access the entry in row 2 and column 3:

```none
A(2,3)
```

<pre class="output">
ans =

    -1

</pre>

Use the colon `:` to select an entire row or column. For example, select row 3:

```none
A(3,:)
```

<pre class="output">
ans =

     3     4    -8

</pre>

Select column 2:

```none
A(:,2)
```

<pre class="output">
ans =

     0
     5
     4

</pre>