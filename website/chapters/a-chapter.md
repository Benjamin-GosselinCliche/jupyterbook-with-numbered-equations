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

(a-chapter-label)=
# A chapter 

(a-section-label)=
## A section with equations

This is an equation :

```{math}
:label: eq9f1ba793
\begin{equation}
\frac{i \hbar}{2 \pi} \frac{\partial \psi(r, \theta, \phi, t)}{\partial t} 
= -\frac{\hbar^2}{8 \pi^2 m} \nabla^2 \psi(r, \theta, \phi, t) + V(r) \psi(r, \theta, \phi, t)
\end{equation}
```

A solution of the equation {eq}`eq9f1ba793` is given by an other equation : 

```{math}
:label: eqf703b9dd
\begin{equation}
\psi_{n, \ell, m}(r, \theta, \phi)=F_{n,\ell}(r, r_0) L_{n-\ell-1}^{2 \ell+1}\left(\frac{2 r}{n r_0}\right)\left(\frac{2 r}{n r_0}\right)^{\ell} e^{-\frac{r}{n r_0}} Y_{\ell, m}(\theta, \phi)
\end{equation}
```

### A subsection with reference from an other chapter

We got the equation {eq}`eqf7012739dd` in another section {numref}`a-section-label-2` in another chapter {numref}`the-best-chapter-label` or the {eq}`eqf7xs9dd` in another section {numref}`a-section-label-3` in another chapter {numref}`an-other-chapter-label`.

### A subsection with a list

For the equation {eq}`eqf703b9dd`, we have a list of equations:

```{math}
:label: eqf7o8c6vdd
\begin{equation}
\begin{aligned}
& r_0 = \frac{4 \pi \varepsilon_0 \hbar^2}{\mu e^2} \\
& \mu=\frac{m_1 m_2}{m_1+m_2} \\
& L_n^{(\alpha)}(x)=\frac{x^{-\alpha} e^x}{n!} \frac{d^n}{d x^n}\left(e^{-x} x^{n+\alpha}\right) \\
& Y_{l, m}(\theta, \varphi)=(-1)^{\frac{1}{2}(m+|m|)} \sqrt{\frac{(2 l+1)}{4 \pi} \frac{(l-|m|)!}{(l+|m|)!}} P_{l,|m|}(\cos \theta) \mathrm{e}^{i m \varphi} \\
& P_{l, m}(x)=\frac{(-1)^m}{2^l l!}\left[1-x^2\right]^{m / 2} \frac{\mathrm{~d}^{l+m}}{\mathrm{~d} x^{l+m}}\left[x^2-1\right]^l
\end{aligned}
\end{equation}
```

## An other section

### A subsection with a long equation

```{math}
:label: eqf70td806
\begin{equation}
\psi_{n, \ell, m}(r, \theta, \phi)=F_{n,\ell}(r, r_0) L_{n-\ell-1}^{2 \ell+1}\left(\frac{2 r}{n r_0}\right)\left(\frac{2 r}{n r_0}\right)^{\ell} e^{-\frac{r}{n r_0}} (-1)^{\frac{1}{2}(m+|m|)} \sqrt{\frac{(2 l+1)}{4 \pi} \frac{(l-|m|)!}{(l+|m|)!}} P_{l,|m|}(\cos \theta) \mathrm{e}^{i m \varphi}
\end{equation}
```

### A subsection with an image

```{figure} /_static/img/logo.png
---
align: center
width: 50%
class: responsive-image
name: img-label-1
---
This is an image.
```
