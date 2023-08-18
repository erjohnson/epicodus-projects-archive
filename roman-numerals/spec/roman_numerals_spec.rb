require('rspec')
require('roman_numerals')

describe('numerals_counter') do
  it('Returns the Roman numeral version of a single digit') do
    numerals_counter("1").should(eq("I"))
  end

  it('Returns the 2-character Roman numeral version of a single digit') do
    numerals_counter("2").should(eq("II"))
  end

  it('Returns a multicharacter Roman numeral version of a number') do
    numerals_counter("3999").should(eq("MMMCMXCIX"))
  end
end

describe('reverse_counter') do
  it('Returns the digit version of a Roman numeral') do
    reverse_counter("I").should(eq(1))
  end

  it('Returns the digit version of a large Roman numeral') do
    reverse_counter("MMMCMXCIX").should(eq(3999))
  end
end
