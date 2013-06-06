class Master
  attr_accessor :name, :accounts

  def initialize(name)
    @name = name
    @accounts = []
  end

  def add_account(client_name, balance)
    account = {}
    account[:name] = client_name
    account[:balance] = balance
    @accounts << account
    account
  end

  def deposit(account_name, amount)
    @accounts.each do |account|
      if account[:name] == account_name
        account[:balance]	+= amount
      end
    end
  end
end