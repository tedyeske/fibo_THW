def iterative_fib(num)
  fib0 = 0
  fib1 = 1 
  print "=>#fib(0)=#{fib0}\n" 
  print "=>#fib(1)=#{fib1}\n"
  i = 1 
  while i <= num -2
      temp = fib1
      fib1 = fib1 + fib0
      fib0 = temp
      i += 1
      print "=>fib(#{i})=#{fib1}\n"
      p 
  end   
end
def recursive_fib(num)
  fib0 = 0
  fib1 = 1 
  i = 3 
  while i <= num
      temp = fib1
      fib1 = fib1 + fib0
      fib0 = temp
      i += 1      
  end   
end
require 'benchmark'
num = 10
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end