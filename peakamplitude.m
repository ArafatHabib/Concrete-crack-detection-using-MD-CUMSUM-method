function [pkamp] = pkamplitude(x)
N=length(x);
w=999;
for i=1:N-w
    Yburst=x(i:i+w);
pkamp(:,i) =max((Yburst));
end

