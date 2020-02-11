function b=bisection( func,min,max,tol)

loop=0;
b=0;
if func(min)*func(max)>0
    disp('ERROR');
else
    b=(min+max)/2;
    err=abs(func(b));
    
    while err>tol
        if func(min)*func(b)<0
            max=b;
        else
            min=b;
        end
        b=(min+max)/2;
        err=abs(func(b));
        loop=loop+1;
    end
    str=['The number of loops:', num2str(loop)];
    disp(str);
end  
