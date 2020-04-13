function [engy] = energy(x)
N=length(x);
w=999;
for i=1:N-w
    Yburst=x(i:i+w);
    th =0.1*max(Yburst);
Ybursth = Yburst-th;
Ybursth(Ybursth<0)=0;
engy(i,:) =sum((Ybursth.^2));
end


