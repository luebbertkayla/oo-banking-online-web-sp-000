class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
  
  def valid?
    if @sender.valid? && @receiver.valid?
      true 
    else 
      false 
    end
  end
  
  def execute_transaction
    if @status == "complete"
      puts "Transaction was already excuted."
       
    elsif 
      @sender.deposit( @amount * -1 ) 
      @receiver.deposit( @amount )
      @status = "complete"
    
    else
      @sender.balance < @amount
      @status = "rejected"
      puts "Transaction rejected. Please check your account balance."
    end
  end
end
