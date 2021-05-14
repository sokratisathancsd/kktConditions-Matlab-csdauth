%{
%paradeigma1
function f = objfun(x)
f = (x(1)-3/2).^2 + (x(2)-1/2).^4;
%}

%{
%paradeigma2
function f = objfun(x)
f = (x(1)-2).^2 + 2*(x(2)-1).^2;
%}

%%{
%paradeigma3
function f = objfun(x)
f = x(1) + x(2);
%}


