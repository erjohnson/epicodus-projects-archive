require('rspec')
require('prime_sift')

describe('sieve') do
  it("Returns single digit prime numbers") do
    sieve(9).should(eq([2,3,5,7]))
  end

  it("Returns multi digit prime numbers") do
    sieve(98).should(eq([2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97]))
  end

  it("Returns multi digit prime numbers 2") do
    sieve(102).should(eq([2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101]))
  end
end

describe('sieve_nth') do
  it("Returns the nth prime number less than 1000") do
    sieve_nth(3).should(eq(5))
  end
end
