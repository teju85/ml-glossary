---
layout: page
title:  Evidence Lower Bound
needmath: true
aka: ELBO, Variational Lower Bound
---
ELBO is an objective for optimization in Variational Bayes.

Given:
1. $$Z$$ - hidden variables
2. $$X$$ - observed variables
3. $$P(Z\|X)$$ - true posterior
4. $$Q$$ - approximated posterior

Objective is:
$$ELBO(X) = \sum_{Z} Q(Z) log P(Z, X) - \sum_{Z} Q(Z) log Q(Z) $$

So, by maximizing for ELBO objective, we are effectively minimize KL-Divergence
between $$Q$$ and $$P$$
