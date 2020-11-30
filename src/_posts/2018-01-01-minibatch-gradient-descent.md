---
layout: page
title: Minibatch Gradient Descent
references:
  - https://www.slideshare.net/SebastianRuder/optimization-for-deep-learning
needmath: true
seealso:
  - gradient-descent
  - batch-gradient-descent
  - stochastic-gradient-descent
---
This performs gradient descent on a smaller subset of samples in the dataset.

* $$g_t = \frac{\partial J(\theta_t, x_n^i, y_n^i)}{\partial \theta_t}$$

Where:
1. $$n$$ = batch size
2. $$x_n^i, y_n^i$$ = i'th input batch from the dataset.
3. all other equations and parameters are as explained in
   [gradient descent]({{ site.baseurl }}{% post_url 2018-01-01-gradient-descent %})

Pros:
1. Reduces high variance updates seen in
   [stochastic gradient descent]({{ site.baseurl }}{% post_url 2018-01-01-stochastic-gradient-descent %})
2. Can convert some level-2 blas ops into level-3
3. Similar convergence guarantees as in
   [batch gradient descent]({{ site.baseurl }}{% post_url 2018-01-01-batch-gradient-descent %})
4. supports online learning

Cons:
1. $$n$$ is now a hyper parameter to be tuned for effect by decreasing $$\eta$$
   over time.

This is one of the most commonly used minimization procedures in ML.
