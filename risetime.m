function [rtm] = risetime(x)
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
        tstart = tmax;
    elseif I(1)==1
        tstart =I(1);
    else
        I1=I(1);
        delta1= (Yburst(I1)-Yburst(I1-1))./(I1-(I1-1));
        tstart = (I1-1)+(th-Yburst(I1-1))./delta1;
    end
    risetime = tmax-tstart;
    rtm(i,:) =risetime;
end

