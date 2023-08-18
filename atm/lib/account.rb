class Account
  
  attr :owner, :balance
  
  @@accounts = []
  
  def initialize attr
    @owner = attr[:owner]
    @balance = attr[:balance]
  end
  
  def self.all
    @@accounts
  end
  
  def self.clear
    @@accounts = []
  end
  
  def save
    @@accounts << self
  end
  
  def deposit amount
    @balance += amount
  end
  
  def withdraw amount
    if amount > @balance
      'Not enough funds to complete this transaction.'
    else
      @balance -= amount
    end
  end
end