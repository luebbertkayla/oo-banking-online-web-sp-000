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
    if 
    @sender.deposit( @amount * -1 ) 
    @receiver.deposit( @amount )
    @status = "complete"
    elsif @status == "complete"
      puts "Transaction was already excuted"
    else
      @sender.balance < @amount
      @status == "rejected"
      return "Transaction rejected. Please check your account balance."
    end
  end
end
