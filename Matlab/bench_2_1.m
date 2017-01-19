function bench_2_1() 

trials = 100;
elements = 1000000;

times = zeros(1,trials);

for i = 1:trials

   tic();
   randi(999, 1, elements);
   t = toc();
   
   times(i) = t;
   
end

fprintf('Matlab - Benchmark 2.1: Average time = %f milliseconds\n', mean(times)*1000);