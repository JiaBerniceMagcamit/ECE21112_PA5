% Jia Bernice C. Magcamit 
% 2ECE-A

% PROBLEM A TRANSPOSE OPERATIONS

R = [5 -2 0 7; 1 3 -4 2; 6 0 8 -1]; % Matrix R

R

trR = transpose(R) % transpose of Matrix R
apR = R' % complex-conjugate transpose of Matrix R
dotR = R.' % array transpose of Matrix R

Z = [2+3i -1+4i 5-2i; -3+i 6 2+5i]; % Matrix Z

Z

trZ = transpose(Z) % transpose of Matrix Z
apZ = Z' % complex-conjugate transpose of Matrix Z
dotZ = Z.' % array transpose of Matrix Z

% ANSWER TO QUESTIONS:

% A. For the real matrix R, all three operations—transpose(R), R', and R.' produce identical results.
% B. For the complex matrix Z, transpose(Z) and Z.' produce identical results.
% C. When a matrix contains complex entries, the apostrophe operator ' takes the complex conjugate of each element in addition to transposing the matrix.


% PROBLEM B TWO METHODS FOR A LINEAR SYSTEM

A = [2 -1 3 2; 1 4 -2 1; 3 2 1 -1; -2 3 4 2];
A
b = [16; -7; 6; 7];
b

x_inv = (A)^(-1)*b;
x_inv

detA = det(A);
detA

A1 = [b(1:4, 1) A(1:4, 2:4)];
A1
detA1 = det(A1);
detA1

A2 = [A(1:4, 1) b(1:4, 1) A(1:4, 3:4)];
A2
detA2 = det(A2);
detA2

A3 = [A(1:4, 1:2) b(1:4, 1) A(1:4, 4)];
A3
detA3 = det(A3);
detA3

A4 = [A(1:4, 1:3) b(1:4, 1)];
A4
detA4 = det(A4);
detA4

x_cramer = [detA1/detA; detA2/detA; detA3/detA; detA4/detA];
x_cramer

% NUMERICAL PRECISION
norm1 = norm(x_inv-x_cramer);
norm1

norm2 = norm(A*x_inv-b);
norm2
