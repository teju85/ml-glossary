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
To avoid big jumps due to gradient descent with momentum, NAG first makes the
big jump and then corrects it accordingly.

$$ v_t = \gamma v_{t-1} + \eta \nabla_{\theta} J(\theta - \gamma v_{t-1})$$

$$\theta = \theta - v_t$$

Where:
1. all terms are as explained in
[momentum gradient descent]({{ site.baseurl }}{% post_url 2018-01-01-momentum-gradient-descent %})
