class BankAccount
  attr_accessor :name 
  
  def initialize(name, balance = 1000, status = open)
    @name = name 
  end
end
