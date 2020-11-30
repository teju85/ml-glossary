---
layout: page
title: Gradient Descent
references:
  - https://www.slideshare.net/SebastianRuder/optimization-for-deep-learning
needmath: true
seealso:
  - minibatch-gradient-descent
  - batch-gradient-descent
  - stochastic-gradient-descent
---
Gradient Descent, in general, are iterative and stochastic approximation to
minimize the function of interest. This function is called as an objective
function or cost function, in the case of Machine Learning. The process of
minimizing this function leads to a "learned" model.

This technique is one of the most commonly used minimization procedures in ML.

Gradient descent minimizes the objective function (aka surface) $$J(\theta)$$
where $$\theta$$ are the parameters of the system, by updating these parameters
in the *opposite* side of their gradient.

* $$g_t = \frac{\partial J(\theta_t)}{\partial \theta_t}$$
* $$\theta_{t+1} = \theta_t - \eta . g_t$$

Where:
1. $$\theta$$ = set of parameters
2. $$J$$ = the function or surface to be optimized
3. $$\eta$$ = learning rate, a hyperparameter that is to be tuned to achieve
   good convergence.
