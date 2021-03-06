function [y,A,bv] = boundprob(n,x0,xf,y0,yf,B)
% n = 100;
% xf=1;
% x0=0;
ya = y0;
yb = yf;
h = (xf-x0)/(n+1);
Dp = diag(ones(n+1,1),1);
Dm = diag((B),-1);
A = Dp + Dm;
D0 = diag(ones(n+2,1));
A = A + D0;
A(1,2) = 0;
A(n+2,n+1) = 0;
bv = ones(n+2,1);
bv(1,1) = ya;
bv(n+2,1) = yb;
y = A\bv;
    