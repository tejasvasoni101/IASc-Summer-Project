%FileData = load('resss.mat');
avec=[];
no = 500 %range of analyte material

for i=1:no
b = [result(:,i).Teff];
d = b(6,:);  %8 is to pick out the 0th order for 15order
avec = [avec;d];
end



for i=1:no
avec(i,1) = 1.30+ (i/no)*0.2;   
end

writematrix(avec,'big_dat.csv');


