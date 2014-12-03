# Create a bank account and display the balance or withdraw using a PIN.
class Account
    attr_reader :name
    attr_reader :balance
    def initialize( name, balance=100 )
        @name = name
        @balance = balance
    end
    
    public
    def display_balance( pin_number )
        puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
    end
    
    def withdraw( pin_number, amount )
        if pin_number == pin
            puts "Withdrew #{amount}. New balance: $#{@balance}."
            @balance -= amount
        else
            puts pin_error
        end
    end
    
    private
    def pin
        @pin = 1234
    end
    
    def pin_error
        return "Access denied: incorrect PIN."
    end
end

checking_account = Account.new( "Wilson", 1_000_000 )
checking_account.display(1234)
