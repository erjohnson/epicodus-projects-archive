require('rspec')
require('binary')

describe('binary') do
  it('returns the binary equivalent of 2') do
    binary(2).should(eq(10))
  end

  it('returns the binary equivalent of 4') do
    binary(4).should(eq(100))
  end

  it('returns the binary equivalent of 10') do
    binary(10).should(eq(1010))
  end
end
