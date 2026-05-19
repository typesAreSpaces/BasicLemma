# BasicLemma

The package `BasicLemma` implements the algorithm in Lemma 2.1 from
(Kuhlmann et al. 2005).

## Installation

Use the `make` command at the root of the project to produce the maple
library file `BasicLemma.mla`. Then, load the `BasicLemma` package by
adding the following two lines at the beginning of your maple file:

    libname := libname, "<PATH-TO-BasicLemma>/BasicLemma.mla":
    with(BasicLemma):

## Usage and examples

The command `lift` has the following inputs:

- `f`: Denotes the first input polynomial
- `g`: Denotes the second input polynomial
- `basis`: Denotes a list of polynomials
- `x`: Denotes the free variable of the ring of univariate polynomial

The output of `lift` is a pair of polynomials `sigma`, `tau` such that
$$sigma * f + tau * g = 1$$ and both `sigma`, `tau` are non-negative over
the semialgebraic set associated to `basis`. For examples, check the
directory `tests`.

For a simple example, we can execute

    libname := libname, "../BasicLemma.mla":
    with(BasicLemma):

    sigma, tau := lift((x+1)^3, -(x-1)^3, [-(x+1)*(x-1)], x);

The output is

    > libname := libname, "../BasicLemma.mla":
    > with(BasicLemma);
                                       [lift]


    > sigma, tau := lift((x+1)^3, -(x-1)^3, [-(x+1)*(x-1)], x);
    memory used=4.7MB, alloc=8.3MB, time=0.09
    memory used=42.4MB, alloc=45.3MB, time=0.24
                                2                       2
            sigma, tau := 3/16 x  - 9/16 x + 1/2, 3/16 x  + 9/16 x + 1/2

We can verify that
$$(\frac{3}{16}x^2 - \frac{9}{16}x + \frac{1}{2}) \dot (x + 1)^3 + (\frac{3}{16}x^2 + \frac{9}{16}x + \frac{1}{2}) \dot (-(x - 1)^3) = 1 $$
and both $$\frac{3}{16}x^2 - \frac{9}{16}x + \frac{1}{2}$$ and $$\frac{3}{16}x^2 + \frac{9}{16}x + \frac{1}{2}$$ are non-negative over the interval
$$[-1, 1]$$ as these polynomials are non-negative over $$\mathbb{R}$$.

## References



Kuhlmann, S., M. Marshall, and N. Schwartz. 2005. *Positivity, Sums of
Squares and the Multi-Dimensional Moment Problem II*. 5 (4): 583--606.
<https://doi.org/10.1515/advg.2005.5.4.583>.


