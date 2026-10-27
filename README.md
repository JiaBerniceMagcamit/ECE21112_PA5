# Experiment 5: Introduction to MATLAB Programming

**Course:** ECE 2112 - Advanced Computer Programming and Algorithms  
**Author:** Jia Bernice C. Magcamit  
**Section:** 2ECE-A  

---

## Overview

This laboratory activity demonstrates foundational MATLAB operations, focusing on matrix transformations and system-solving techniques in numerical computing. The repository contains the MATLAB script (`Magcamit_PA5.m`) covering two main linear algebra problems:
1. **Transpose Operations:** Evaluating standard transpose, complex-conjugate transpose, and array transpose operations on real and complex matrices.
2. **Solving Linear Systems:** Implementing two distinct matrix methods—the Matrix Inverse Method ($x = A^{-1}b$) and Cramer's Rule—to solve a $4 \times 4$ system of linear equations without using left-division, accompanied by numerical precision checks.

---

### Problem A: Transpose Operations

#### Matrices Defined:
- **Real Matrix $R$ ($3 \times 4$):** R [5 -2 0 7; 1 3 -4 2; 6 0 8 -1]
- **Complex Matrix $Z$ ($2 \times 3$):** Z = [2+3i -1+4i 5-2i; -3+i 6 2+5i]

#### Operations Compared:
1. `transpose(A)` — Standard transpose
2. `A'` — Complex-conjugate transpose (Hermitian transpose)
3. `A.'` — Array transpose (un-conjugated element-wise transpose)

#### Answers to Manual Questions:
* **a. Which operations give identical results for the real matrix $R$?**  
  For the real matrix $R$, all three operations (`transpose(R)`, `R'`, and `R.'`) produce identical results because real numbers have no imaginary components to conjugate.
* **b. Which two operations give identical results for the complex matrix $Z$?**  
  For the complex matrix $Z$, `transpose(Z)` and `Z.'` produce identical results.
* **c. What additional operation is performed by the apostrophe operator when the matrix contains complex entries?**  
  When a matrix contains complex entries, the single apostrophe operator (`'`) computes the **complex conjugate** of each element in addition to transposing the matrix rows into columns.

---

### Problem B: Two Methods for a Linear System

#### Linear System:
$$\begin{aligned}
2x_1 - x_2 + 3x_3 + 2x_4 &= 16 \\
x_1 + 4x_2 - 2x_3 + x_4 &= -7 \\
3x_1 + 2x_2 + x_3 - x_4 &= 6 \\
-2x_1 + 3x_2 + 4x_3 + 2x_4 &= 7
\end{aligned}$$

#### Methods Executed:
1. **Inverse Method (`x_inv`):** Calculated using matrix exponentiation/inversion formula:
   $$x_{\text{inv}} = A^{-1} \cdot b$$
2. **Cramer's Rule (`x_cramer`):** Computed by replacing each column $i$ of $A$ with vector $b$ to form $A_i$, then finding:
   $$x_i = \frac{\det(A_i)}{\det(A)}$$

#### Numerical Precision Verification:
- **Determinant Check:** $\det(A) = -112 \neq 0$ (verifies $A$ is non-singular and solvable).
- **Solution Verification:** Both methods yield the identical solution vector:
  x = [1 ; -2;  3; 1.5]
- **Norm Checks:**
  - `norm(x_inv - x_cramer)` $\approx 0$ (demonstrates equivalence between the inverse method and Cramer's Rule).
  - `norm(A*x_inv - b)` $\approx 0$ (confirms $A x = b$ holds true to numerical precision).

---
