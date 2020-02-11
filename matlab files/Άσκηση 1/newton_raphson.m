function x=newton_raphson( f,f1diff,f2diff,x0,x1,tol)


if f(x0)*f(x1)>0
    dis('Error');
else
    loop=0;
    x=x0;
    err=Inf;
    
    if f(x1)*f2diff(x1)>0
        x=x1;
    end
    while abs(err)>tol
        xold=x;
        x=xold-f(xold)./f1diff(xold);
        err=x-xold;
        loop=loop+1
    end
       str=['Number of loops:',num2str(loop)];
       disp(str);
 end
end

    