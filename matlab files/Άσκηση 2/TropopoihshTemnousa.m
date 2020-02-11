function TropopoihshTemnousa( a,b )
    
  
f=@(x)(94*cos(x)^3 - 24*cos(x) + 177*sin(x)^2 - 108*sin(x)^4-72*cos(x)^3*sin(x)^2-65);
    x0=a;
    x1=b;
    x2=(a+b)/2;
    k=0;
   if(f(a)*f(b) < 0)
        while(abs(x2-x1) > (1/2)*10^-6)
            q=f(x0)/f(x1);
            r=f(x2)/f(x1);
            s=f(x2)/f(x0);
            x3=x2-(r*(r-q)*(x2-x1)+(1-r)*s*(x2-x0))/((q-1)*(r-1)*(s-1));
            x0=x1;
            x1=x2;
            x2=x3;
            k=k+1;
        end
         disp('The root is: %f \n',x3)
        disp('Repeats: %d \n',k)
   end
   
end
