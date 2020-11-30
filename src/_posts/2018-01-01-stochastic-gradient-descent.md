---
layout: page
title: Stochastic Gradient Descent
aka: SGD, incremental gradient descent
references:
  - https://en.wikipedia.org/wiki/Stochastic_gradient_descent
  - https://www.slideshare.net/SebastianRuder/optimization-for-deep-learning
needmath: true
seealso:
  - gradient-descent
  - batch-gradient-descent
  - minibatch-gradient-descent
---
This performs gradient descent on each of the samples in the dataset.

* $$g_t = \frac{\partial J(\theta_t, x^i, y^i)}{\partial \theta_t}$$

Where:
1. $$x^i, y^i$$ = i'th input sample and label in the dataset
2. all other equations and parameters are as explained in
   [gradient descent]({{ site.baseurl }}{% post_url 2018-01-01-gradient-descent %})

Pros:
1. Runs fast
2. Similar convergence guarantees as in
   [batch gradient descent]({{ site.baseurl }}{% post_url 2018-01-01-batch-gradient-descent %}),
   though one should gradually anneal $$\eta$$ over time to achieve this.
3. Supports online learning

Cons:
1. Creates high variance updates to the parameters
