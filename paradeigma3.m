clear;
%%
%Ypologismos toy xstar
x0 = [0,0]; % Make a starting guess at the solution
options = optimoptions(@fmincon,'Algorithm','sqp');
options.Display = 'iter';
[xstar,fval] = fmincon(@objfun,x0,[],[],[],[],[],[],... 
   @constraints,options);
xstar,fval

%%
%plot twn sunartisewn
f=@(x1,x2) x1+x2;

g1=@(x1,x2) x1.^2 + x2.^2 -2;
%g2=@(x1,x2) -x2;

fimplicit(g1)
hold on;
grid on;
%fimplicit(g2)
fcontour(f)
x1star=xstar(1)
x2star=xstar(2)
plot(x1star,x2star,'ro');

%%
syms l1 %l2
syms f(x1,x2)
f(x1,x2)=x1+x2;
syms g1(x1,x2)
g1(x1,x2)= -x1.^2 -x2.^2 +2;
%syms g2(x1,x2)
%g2(x1,x2)=x2;
L=[l1];
G=[g1];
%L=[l1 l2];
%G=[g1 g2];

%klisi KKT
[x1star,x2star]=KKT(f,G,L)
%%
%plot xstarKKT
plot(x1star,x2star,'go');
legend('constraint1','f contours','xstarAlgorithm','xstarKKT');
%legend('constraint1,'constraint2','f contours','xstarAlgorithm','xstarKKT');
hold off;
