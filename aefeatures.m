
for j=1:59
pekampl_three(:,j)=peakamplitude(signalch3(:,j));
end

for j = 25:48
    engyn(:,j)=energy(w1(:,j));
end
rtm=[];
for j = 1:50
    rtm(:,j)=risetime(w1(:,j));
end
for j = 1:48
    cnts(:,j)=counts2chk(w1(:,j));
end
for j = 1:48
    dctm(:,j)=decaytime(w1(:,j));
end
for j = 1:360
    durtm(:,j)=duration(w1(:,j));
end

j=0;
for i=1:610
    [h p ksstat]= kstest2(engy(:,1),engy(:,i));
    j=j+1;
    h1(:,j)=h;
    p1(:,j)=p;
    ksstat(:,j)=ksstat;
end