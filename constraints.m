%{ 
%paradeigma 1
function [c,ceq] = constraints(x)
% Nonlinear inequality constraints
c(1) = +x(1)+x(2)-1;
c(2) = +x(1)-x(2)-1;
c(3) = -x(1)+x(2)-1;
c(4) = -x(1)-x(2)-1;
% Nonlinear equality constraints
ceq=[];
%}

%{
%paradeigma2
function [c,ceq] = constraints(x)
% Nonlinear inequality constraints
c(1) = +x(1)+4*x(2)-3;
c(2) = -x(1)+x(2);
% Nonlinear equality constraints
ceq=[];
%}

%%{
%paradeigma3
function [c,ceq] = constraints(x)
%Nonlinear inequality constraints
c(1) = x(1).^2 + x(2).^2 - 2;
%c(2) = -x(2);
%equality constraints
ceq=[];
%}

