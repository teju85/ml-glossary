---
layout: page
title:  Markov Chain Monte Carlo
needmath: true
aka: MCMC
---
MCMC methods help us in estimating the posterior distributions via sampling
from a complicated probability distribution. As the name suggests, it consists
of 2 parts: Monte Carlo and Markov Chain.

Monte Carlo: a technique to randomly sample a distribution to help approximate
the desired quantity. Example: calculating the value of $$\pi$$.

Markov Chain: a way to generate a sequence of random variables where the current
number depends on the previous value. Markov Chain is essentially a random walk
on a state-transition graph. Thus, the idea here is that this chain of drawn
numbers will settle when repeated for a large number of times.
