---
layout: page
title: Non-parametric Bayesian
references:
  - http://mlg.eng.cam.ac.uk/zoubin/talks/uai05tutorial-b.pdf
  - http://gershmanlab.webfactional.com/pubs/GershmanBlei12.pdf
---
A non-parametric bayesian model is a bayesian model with infinite number of
parameters.

These parameters will be learnt conditionally on the dataset availability.
Meaning, as more data points are added to the set, we can potentially use more
parameters to describe the dataset.

Examples of models/applications:
1. Dirichlet Process K-means
2. Gaussian processes for non-linear regression
