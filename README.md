# Introduction
A glossary of all ML-related keywords/terminologies.
Link: https://teju85.github.io/ml-glossary/

# Instructions
Make changes as needed and to verify those changes, run the following and open
the resulting link in the browser.
```bash
$ make serve
```
To commit these changes:
```bash
$ make publish
```

To update 3rd party files:
```bash
$ make update
```

# Preparing glossary
* Use the 'page' layout
* To link to other terminologies, use the 'seealso' variable
* For references, use the 'references' variable
* Use 'aka' for listing its aliases
* To render math equations, 'needmath: true'

Easiest is to copy an existing file and modify according to your needs! :)
Name and store the file under 'src/_posts/2018-01-01-<name-of-the-term>.md'.
Yes, maintain the same date across all files! I was unable to get jekyll to
recognize posts without a preceeding date in their filename.

Note:
* Fonts are copied from KaTeX/katex-fonts github repo
* jquery and katex files are again downloaded and distributed along with this repo
