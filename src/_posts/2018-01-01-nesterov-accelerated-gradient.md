---
layout: page
title: Nesterov Accelerated Gradient
aka: NAG
references:
  - https://www.slideshare.net/SebastianRuder/optimization-for-deep-learning
needmath: true
seealso:
  - gradient-descent
  - momentum-gradient-descent
---
[momentum gradient descent]({{ site.baseurl }}{% post_url 2018-01-01-momentum-gradient-descent %})
performs big jumps due to momentum. To avoid this, NAG first computes the
gradient and then makes a big jump.

NAG first makes a big jump in the direction of the previously accumulated
gradient, which is $$\theta_t - \gamma v_{t-1}$$. It then measures where it ends
up and accordingly makes a correction.

* $$m_t = \theta_t - \gamma v_{t-1}$$
* $$v_t = \gamma v_{t-1} + \eta \frac{\partial J(m_t)}{\partial \theta_t}$$
* $$\theta_{t+1} = \theta_t - v_t$$

Where:
1. all other equations and parameters are are as explained in
   [momentum gradient descent]({{ site.baseurl }}{% post_url 2018-01-01-momentum-gradient-descent %})
