---
layout: page
title:  decision trees
references:
  - https://en.wikipedia.org/wiki/Decision_tree
  - https://github.com/SilverDecisions/SilverDecisions/wiki/Gallery
---
A decision tree is a flowchart which each node performing a condition check on
an attribute in the input data. This check is then recursively performed on the
non-leaf child nodes, until a leaf node is encountered.

These trees can also be thought of as partitioning the input dataset using these
condition checks, all the way down to leaf nodes, recursively. However, this
also means that it is more susceptible for over-fitting.

It is also one way to visualize nested conditional statements in programs. These
are one of the most popular ML models, especially for structured datasets.
