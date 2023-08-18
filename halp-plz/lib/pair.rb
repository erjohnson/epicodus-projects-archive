class Pair

  @@pairs = []

  attr_reader :name_one, :name_two
  
  def initialize attributes
    @name_one = attributes[:name_one]
    @name_two = attributes[:name_two]
  end

  def self.all
    @@pairs
  end

  def self.clear
    @@pairs = []
  end

  def save
    @@pairs << self
  end

  def remove
    Pair.all.delete(self)
  end

  def show_pair_tickets
    Ticket.all.select { |x| x.partner_one == @name_one && x.partner_two == @name_two}
  end
end
