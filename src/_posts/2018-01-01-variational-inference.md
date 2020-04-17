---
layout: page
title:  Variational Inference
needmath: true
aka: variational bayesian methods
seealso: evidence-lower-bound
---
VI another form of approximating the posterior distribution (or likelihood).

VI starts by approximating the true posterior $$P(Z | X)$$ with a simpler
distribution $$Q(Z)$$ (eg: Gaussian) and then try to make this approximation
better by minimizing the dissimilarity between $$P$$ and $$Q$$. Most commonly
used dissimilarity measure is KL-Divergence. A populate objective that is used
here for optimization is ELBO.

Thus, in an essence, this can be seen as an extension of techniques like
Expectation Maximization (EM) or Maximum APosteriori estimation (MAP).
