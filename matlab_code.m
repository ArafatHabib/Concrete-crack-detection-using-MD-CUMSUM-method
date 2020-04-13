filename='STREAM20191202-144503-698.wfs';
ch=1;
j=0;
for i=301:1:400
signals= wfsread_exp(filename,i,i+1);
j=j+1;
signalch10(:,j)=signals(:,ch);
end

