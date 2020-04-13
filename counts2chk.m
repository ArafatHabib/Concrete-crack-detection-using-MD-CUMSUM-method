function [cnts] = counts(x)
N=length(x);
w=999;
 for i=1:N-w
    Yburst =x(i:i+w);
    th =0.1*max(Yburst);
    locs = Yburst > th;
    localmax = strfind(locs(:)',[0,1]);
    ct = length(localmax);
    cnts(i,:) = ct;
end
