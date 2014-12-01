$VERBOSE = nil    # Let's us do the old style Ruby 1.8 Prime for manual purposes.
require 'prime'   # This is a module to generate our prime numbers.

def first_n_primes(n)

  return "n must be an integer." unless n.is_a? Integer

  return "n must be greater than 0." if n <= 0
  
  prime_array ||= []
  
  prime = Prime.new
  n.times { prime_array << prime.next }
  
  prime_array
end

first_n_primes(10)
