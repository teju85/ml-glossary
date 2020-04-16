---
layout: page
title:  Metropolis-Hastings
needmath: true
seealso: markov-chain-monte-carlo
---
MH is one way of doing MCMC.

Output: $$p(\theta)$$ - inferred posterior distribution

Given:
* $$g(\theta)$$ - 
* $$q(\theta)$$ - 

Algo:
* start with initial guess $$\theta_0$$
* Repeat the below `maxSteps` times
  * sample $$\theta^*$$ from $$q(\theta^*\|\theta_{i-1})$$
  * $$\alpha = \frac{g(\theta^*) q(\theta_{i-1}|\theta^*)}{g(\theta_{i-1}) q(\theta^*|\theta_{i-1})}$$
  * if $$\alpha >= 1$$ set $$\theta_i = \theta^*$$
  * if $$\alpha$$ is between 0 and 1 set $$\theta_i = \theta^*$$ with probability $$\alpha$$
