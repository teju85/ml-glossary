---
layout: page
title:  gradient boosting
seealso: gbt
references:
  - https://en.wikipedia.org/wiki/Gradient_boosting
  - https://machinelearningmastery.com/gentle-introduction-gradient-boosting-algorithm-machine-learning/
  - http://www.ccs.neu.edu/home/vip/teach/MLcourse/4_boosting/slides/gradient_boosting.pdf
---
An ML technique to build a model using an ensemble of weak learners

It builds this ensemble iteratively based on minimizing an arbitrary
differentiable loss function defined on the space of learners. This can also be
thought os as the successive weak learners trying to concentrate more on the
mistakes made by their predecessors. The most commonly used weak-learners are
decision trees.
