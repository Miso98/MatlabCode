A = [1 4 5; 4 3 2; -1 2 5];
B = [2 3 6; 2 2 1; 4 5 7];
C = [2 1 4; 5 8 7; 1 3 2; 0 7 8];
b= [ 6; 3; 4];

B*A
C*A
A*C'
A*C
A*C' 


%A*C is 3x3 * 4*3 matlab says dimensions don't agree
%matlab also doesn't continue to calculate A*C' is defined so put it first

Ab = [1 4 5 6; 4 3 2 3; -1 2 5 4];
rref(Ab)

Bb = [2 3 6 6; 2 2 1 3; 4 5 7 4];
rref(Bb)


