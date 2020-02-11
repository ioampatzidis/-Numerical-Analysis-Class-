function x1=secant(f,x0,x1,tol)


if f(x0)*f(x1)>0
    disp('Error');
else 
    loop=0;
    y1=f(x1);
    y0=f(x0);
    err=abs(y1);
    
    while err>tol
        tmp=x1;
        x1=x1-y1*(x1-x0)/(y1-y0);
        x0=tmp;
        y0=y1;
        y1=f(x1);
        loop=loop+1;
        err=abs(y1);
        
    end
end
     str=['Number of loops:',num2str(loop)];
     disp(str);
end