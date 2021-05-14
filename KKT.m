%%
function [x1star,x2star]=KKT(objf,G,L)
        syms l1 l2 l3 l4 x1 x2
        syms f(x1,x2)
        f(x1,x2)=objf;
        fx1(x1,x2)=diff(f,x1);
        fx2(x1,x2)=diff(f,x2);
        syms g(x1,x2)
        Gx1=diff(G,x1);
        Gx2=diff(G,x2);
        L1(x1,x2,L)=fx1-L*Gx1.'==0;
        L2(x1,x2,L)=fx2-L*Gx2.'==0;
        EQS(x1,x2,L)=L.*G==0;
        Gs(x1,x2,L)=G;
        Ls(x1,x2,L)=L;
        
        sol=solve([L1,L2,EQS,Gs>=0,Ls>=0],[x1,x2,L],'Real',true);
        x1star=sol.x1;
        x2star=sol.x2;
        l1star=sol.l1
        %l2star=sol.l2
        %l3star=sol.l3
        %l4star=sol.l4
    
        
   
    
end


%%