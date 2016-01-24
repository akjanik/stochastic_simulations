delete('data1.txt', 'data2.txt', 'data3.txt');
 data1 = stable2(2, 0, 1, 0, 10000);
 data2 = stable2(1, 0, 1, 0, 10000);
 data3 = stable2(0.5, 1, 1, 0, 10000);
% save data1.txt data1 -ascii;
% save data2.txt data2 -ascii;
% save data3.txt data3 -ascii;

delete('gaussian.txt', 'cauchy.txt', 'levy.txt');

gaussian = stable(2, 0, 1, 0, 100000); %Gaussian distribution
cauchy = stable(1.0, 0, 1, 0, 100000);
levy = stable(0.5, 1.0, 1, 0, 100000);
distr = stable(1.3, 0.3, 2, -5, 100000);

save gaussian.txt gaussian -ascii;
save cauchy.txt cauchy -ascii;
save levy.txt levy -ascii;
save distr.txt distr -ascii;
