A= [-1 3 -2 4; -1 4 -3 5; -1 5 -4 6];
rref(A)
% gives a matrix with bottom row as all 0 meaning infinite solutions
B= [-1 3 -2 1; -1 4 -3 0; -1 5 -4 0];
rref(B)
% bottom row coefficients of x,y,z are all 0 but the equation is equal to
% 1 which is impossible and therefore there are no solutions 
C= [0 4 -3 3; -1 7 -5 4; -1 8 -6 5];
rref(C)
% this gave the same answers 