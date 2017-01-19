function bench_1_1() 

trials = 100;
rows = 1000;
cols = 1000;

times = zeros(1,trials);

for i = 1:trials
   M = randi(10000, rows, cols);
   
   tic();
   inv(M);
   t = toc();
   
   times(i) = t;
end

fprintf('Matlab - Benchmark 1.1: Average time = %f milliseconds\n', mean(times)*1000);