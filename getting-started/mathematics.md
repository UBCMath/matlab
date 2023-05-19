# Elementary Mathematics

We can use MATLAB to solve all kinds of problems in calculus, linear algebra, differential equations and beyond. Let's take a look at some foundational mathematical concepts in MATLAB that are relavant in all branches of mathematics such as numbers, vectors, matrices and functions.

:::{seealso}
Check out the MATLAB documentation on [elementary mathematics](http://www.mathworks.com/help/matlab/elementary-math.html).
:::

## Numbers

We can use MATLAB to perform all the usual arithmetic operations:

| Operation | MATLAB Syntax |
| :---: | :---: |
| addition | `+` |
| subtraction | `-` |
| multiplication | `*` |
| division | `/` |
| exponentiation | `^` |

Let's do an example from calculus. Recall the [Taylor series](https://en.wikipedia.org/wiki/Taylor_series) of the exponential function is:

$$
e^x = \sum_{n=0}^{\infty} \frac{x^n}{n!} =  1 + x + \frac{x^2}{2} + \frac{x^3}{2 \cdot 3} + \frac{x^4}{2 \cdot 3 \cdot 4} + \frac{x^5}{2 \cdot 3 \cdot 4 \cdot 5} + \cdots
$$

Let's use the first 6 terms of the Taylor series to approximate the value:

$$
e^{-1/2} = \frac{1}{\sqrt{e}} \approx  1 - (1/2) + \frac{(1/2)^2}{2} - \frac{(1/2)^3}{2 \cdot 3} + \frac{(1/2)^4}{2 \cdot 3 \cdot 4} - \frac{(1/2)^5}{2 \cdot 3 \cdot 4 \cdot 5}
$$

```none
1 - (1/2) + (1/2)^2/2 - (1/2)^3/(2*3) + (1/2)^4/(2*3*4) - (1/2)^5/(2*3*4*5)
```

<pre class="output">
ans =

   0.6065

</pre>

Note that we group operations together using parentheses `( ... )` in the computation above.

## Constants $\pi$ and $e$

The constant $\pi$ is entered as `pi`:

```none
pi
```

<pre class="output">
ans =

    3.1416

</pre>

The exponential function $e^x$ is entered as `exp` in MATLAB therefore $e=e^1$ is `exp(1)`:

```none
exp(1)
```

<pre class="output">
ans =

   2.7183

</pre>

## Format `short` and `long`

We can specify numerical output as `long` (with 15 decimal places) or `short` (with 4 decimals). Let's look at our approximation of $e^{-1/2}$ again using `format long`:

```none
format long
1 - (1/2) + (1/2)^2/2 - (1/2)^3/(2*3) + (1/2)^4/(2*3*4) - (1/2)^5/(2*3*4*5)
```

<pre class="output">
ans =

   0.606510416666667

</pre>

Compare to the value computed by the function `exp`:

```none
exp(-1/2)
```

<pre class="output">
ans =

   0.606530659712633

</pre>

## Variables

Just like the familiar variables $x$ and $y$ in mathematics, we use variables in programming to easily manipulate values. The assignment operator `=` assigns a value to a variable in MATLAB. For example, let's compute the values $y = 1 + x + x^2$ and $y' = 1 + 2x$ for $x = 2$:

```none
x = 2
```

<pre class="output">
x =

     2

</pre>

```none
y = 1 + x + x^2
```

<pre class="output">
y =

     7

</pre>

```none
dy = 1 + 2*x
```

<pre class="output">
dy =

     5

</pre>

Note that the variables `x`, `y` and `dy` now appear in the workspace window and are available for us to use to subsequent computations.

## Mathematical Functions

All the standard mathematical functions are available in MATLAB:

| Function | MATLAB Syntax |
| :---: | :---: |
| $\sin(x)$ | `sin(x)` |
| $\cos(x)$ | `cos(x)` |
| $\tan(x)$ | `tan(x)` |
| $\arctan(x)$ | `atan(x)` |
| $e^x$ | `exp(x)` |
| $\ln(x)$ | `log(x)` |
| $\log_{10}(x)$ | `log10(x)` |
| $\sqrt{x}$ | `sqrt(x)` |

Let's compute some examples:

```none
cos(pi/4)
```

<pre class="output">
ans =

    0.7071

</pre>

```none
1/sqrt(2)
```

<pre class="output">
ans =

    0.7071

</pre>

```none
log(2)
```

<pre class="output">
ans =

    0.6931

</pre>

```none
atan(1)
```

<pre class="output">
ans =

    0.7854

</pre>

:::{note}
1. Trigonometric functions are defined in terms of radians. 
2. The MATLAB function `log` is the natural logarithm and `log10` is the logarithm with base 10. 
:::

## Custom Functions

Create custom functions using the `@` operator. For example, let's create the function:

$$
f(x) = \frac{1}{1 + x^2}
$$

```none
f = @(x) 1/(1 + x^2);
```

Compute some values of $f(x)$:

```none
f(0)
```

<pre class="output">
ans =

     1

</pre>

```none
f(1)
```

<pre class="output">
ans =

    0.5000

</pre>

```none
f(2)
```

<pre class="output">
ans =

    0.2000

</pre>