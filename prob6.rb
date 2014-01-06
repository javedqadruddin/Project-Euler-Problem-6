#Project Euler Problem 6 - constant time w00t!
#The sum of the squares of the first ten natural numbers is,

#1^2 + 2^2 + ... + 10^2 = 385
#The square of the sum of the first ten natural numbers is,

#(1 + 2 + ... + 10)2 = 552 = 3025
#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

require "benchmark"

time = Benchmark.measure do

	n = 100


	squared_sum = (1/2.0) * n * (n + 1) * (1/2.0) * n * (n + 1)   	#This is (1/2 * n * (n+1)) squared

	sum_of_squares = ((2*n + 1) * ((1/2.0) * n * (n + 1))) / 3



	puts (squared_sum - sum_of_squares).to_i

end

puts time