# Ve270lab

This document class is originally designed for laboratory session of Ve270, but
it can generally be used in various Prof. Gang Zheng's courses.

There are some configuration commands included:

- definition commands (defines arguments for reports)
    - `\coursetitle{course}`
    - `\labnumber{number}`
    - `\student{name}`
    - `\university{univ}`
    - `\experiment{title}`

## notes

`\newgeometry` after text begin may cause problems;
`\newcommand{\resetHeadWidth}{\fancy@setoffs}` may be useful.

## files

- `Ve270lab.cls`: the document class file
- `example.tex`: the minimum working example
- `Ve270lab (1.0).cls` and `Ve270lab (1.1).cls`: history before setting up this
  repository
- `Changelog (obsolete).txt`: change-logs before setting up this repository
