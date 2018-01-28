---
layout: page
title:  learning rate
seealso:
  - sgd
  - hyper-parameters
needmath: true
---
It is a hyper-parameter that controls the step-size during gradient-based
updates for the parameters of the model.

In other words, this is the $$\eta$$ that comes up in the gradient descent
update equations as in:
$$ x_{n+1} = x_{n} - \eta F'(x_{n}) $$
