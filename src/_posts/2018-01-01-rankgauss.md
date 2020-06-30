---
layout: page
title: RankGauss
references:
  - https://www.kaggle.com/c/porto-seguro-safe-driver-prediction/discussion/44629#250927
  - http://fastml.com/preparing-continuous-features-for-neural-networks-with-rankgauss/
---
A data pre-processing technique for input normalization.

Steps:
- take a column
- argsort it
- normalize the argsorted array to [-1, 1] range
- apply erfinv on it
