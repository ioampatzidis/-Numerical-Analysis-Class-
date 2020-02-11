
format long;
syms x;
f=exp((sin(x).^3))+x.^6-2*(x.^4)-(x.^3)-1;
fldiff=diff(f);
f2diff=diff(f1diff);
f=inline(char(f));
f1diff=inline(char(f1diff));
f2diff=inline(char(f2diff));





