---
layout: page
title: Stochastic Average Gradient Descent
aka: SAG
references:
  - https://hal.inria.fr/hal-00860051/document
needmath: true
seealso:
  - batch-gradient-descent
  - stochastic-gradient-descent
---
This is a hybrid between batch gradient descent and stochastic gradient descent.

At each iteration, it picks a sample at random and updates the gradient for that
sample. For all others, the one from the previous iteration is kept around. After
this, it just performs a full batch-gradient-descent on this!

$$\delta_{i_k} = \nabla_{\theta} J(\theta, x_{i_k}, y_{i_k})$$

$$ \theta = \theta - \eta . \Sigma_i \delta_i$$

$$\forall i = [0, n)$$

Where:
1. $$\theta$$ = parameters
2. $$J$$ = the function to be optimized
3. $$\eta$$ = learning rate
4. $$n$$ = number of samples
5. $$i_k$$ = random index at the current iteration
