---
layout: page
title: Momentum Gradient Descent
references:
  - https://www.slideshare.net/SebastianRuder/optimization-for-deep-learning
needmath: true
seealso:
  - gradient-descent
---
To minimize the issues of local-optima convergence of Gradient Descent, one can
use momentum. In other words, if the gradients keep changing in direction every
iteration, this will dampen such oscillations. And if gradients don't change too
much, this will further enhance their update strength.

$$ v_t = \gamma v_{t-1} + \nabla_{\theta} J(\theta)$$

$$\theta = \theta - v_t$$

Where:
1. $$v_t$$ = momentum update for the current time step
2. $$\gamma$$ = momentum term. Another hyper-param to be tuned.
3. all others as explained in
[gradient descent]({{ site.baseurl }}{% post_url 2018-01-01-gradient-descent %})
