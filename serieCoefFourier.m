function [ak,bk] = serieCoefFourier(Ta, T0, x, K)
    f=1/T0;  %Periodo
    N=length(x); %n percebo
    t = [0:(N-1)]'*Ta;
    ak=zeros(K+1,1);
    bk=zeros(K+1,1);
    ak(1)=mean(x);  %a0
    bk(1)=0;        %b0     

    for i = 2:K+1
        ak(i) =  2/N*x*cos(2*pi*f*(i-1)*t);
        bk(i) =  2/N*x*sin(2*pi*f*(i-1)*t);
    end
   
end