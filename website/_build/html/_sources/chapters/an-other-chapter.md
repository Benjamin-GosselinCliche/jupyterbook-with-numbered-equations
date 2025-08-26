---
jupytext:
  text_representation:
    extension: .md
    format_name: myst
kernelspec:
  display_name: Python 3
  language: python
  name: python3
---

(an-other-chapter-label)=
# An other chapter 

(a-section-label-3)=
## A section with an equation

This is an equation with a reference in the section {numref}`a-section-label` in the the chapter {numref}`a-chapter-label`.

```{math}
:label: eqf7xs9dd
\begin{aligned}
\begin{bmatrix}
0 \\
\Delta x 
\end{bmatrix}
&=
\begin{bmatrix}
\gamma & \gamma \beta \\
\gamma \beta & \gamma
\end{bmatrix}
\begin{bmatrix}
c \Delta t' \\
\Delta x'
\end{bmatrix}\\
&=
\begin{bmatrix}
\gamma c \Delta t' +\gamma \beta \Delta x' \\
+\gamma \beta c \Delta t' + \gamma \Delta x'
\end{bmatrix}
\end{aligned}
```
