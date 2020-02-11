
format long;
syms x;
f = (54*x.^6)+(45*x.^5)-(102*x.^4)-(69*x.^3)+(35*x.^2)+16*x-4;
f1diff=diff(f);
f2diff=diff(f1diff);
f=inline(char(f));
f1diff=inline(char(f1diff));
f2diff=inline(char(f2diff));