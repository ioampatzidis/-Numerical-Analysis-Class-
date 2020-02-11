function x=neaNewtonRaphson(x0,x1,tol)
 f=@(x)(54*x.^6)+(45*x.^5)-(102*x.^4)-(69*x.^3)+(35*x.^2)+16*x-4;
 df=@(x) (324*x.^5)+(225*x.^4)-(408*x.^3)-(207*x.^2)+(70*x)+16;     
 dff=@(x) (1620*x.^4)+(900*x.^3)-(1224*x^2)-(414*x)+70 ;                       

 if f(x0) * f(x1)>0
    disp('ERROR');
else
    err=Inf;
    loop=0;
    x=x0;
    if f(x1)*dff(x1)>0
        x=x1;
    end
    
    while abs(err)>tol
        x_old=x;
        x=x_old - f(x_old)./df(x_old)-1/2*(((f(x_old).^2)*dff(x_old)) / (df(x_old).^3));
        err=x-x_old;
        loop=loop+1;
    end
    str=['Num of loops:', num2str(loop)]
    disp(str);
    
end