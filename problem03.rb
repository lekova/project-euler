require 'prime'

# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
def get_largest_prime_factor num
  get_largest_number(prime_factor_numbers(num))
end

def prime_factor_numbers num
  factors = []
  primes_sqrt = Math.sqrt(num).to_i
  primes = extract_prime_numbers(primes_sqrt)

  primes.each do |prime|
    while num % prime == 0
      factors.push(prime)
      num = num / prime
    end
  end
  factors.push(num)
  factors
end

def get_largest_number array
  array.max { |a, b| a <=> b }
end

def extract_prime_numbers num
  Prime.each(num).to_a
end

def test array
  array.reduce(:*)
end


puts "get_largest_prime_factor 600851475143 => #{get_largest_prime_factor 600851475143}"
puts "test for 600851475143 => #{test(prime_factor_numbers(600851475143))}"
