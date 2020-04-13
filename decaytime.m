function [dct] = decaytime(x)
N=length(x);
w=999;
for i=1:N-w
    Yburst=x(i:i+w);
    th =0.1*max(Yburst);
    Ybursth = Yburst-th;
    Ybursth(Ybursth<0)=0;
    tmax = find(Ybursth == max(Ybursth));
    tmax=tmax(1);
    [I]=find(Ybursth>0);
     if isempty(I)
        tend = tmax;
     elseif I(end)==length(Yburst)
        tend =I(end);
     else
         delta2=(Yburst(I(end)+1)-Yburst(I(end)))./(I(end)+1-I(end));
      tend = I(end)+1-(th-Yburst(I(end)))./(delta2);
    end
    decaytime =tend-tmax;
    dct(i,:) =decaytime;
end



