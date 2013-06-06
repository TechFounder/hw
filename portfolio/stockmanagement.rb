
class Stockmanager

  attr_accessor :name, :clients

  def initialize(name, clients)
    @name = name
    @clients = clients
  end

  def create_account(account)

    @clients.push(account)

  end

  def client_lister
    @clients.each do |client|
      p client.name
      p client.balance
      p client.account_portfolios.join(', ')
    end
  end


  def deposit(client_name, deposit_amount)
    @clients.each do |account|
      if account.name == client_name
        account.balance += deposit_amount
      end
    end
  end
end


#-------------------------------------------------------------------------------

class Client

  attr_accessor :name, :account_portfolios, :balance

  def initialize(name, account_portfolios, balance)
    @name = name
    @account_portfolios = account_portfolios
    @balance = balance
  end

  def create_portfolio(name, stocks)
    portfolio = {}
    portfolio[:name] = name
    portfolio[:stocks] = stocks
    @account_portfolios.push(portfolio)
  end

  def buy_stock(name, qty_purchased, trade_value, portfolio_name)
  	stock = {}
  	stock[:name] = name
  	stock[:qty_purchased] = qty_purchased
  	stock[:trade_value] = trade_value

  	@account_portfolios.each do |portfolio|
  		if portfolio[:name] == portfolio_name
  			portfolio[:stocks] = stock
  		end 
  	end




  end
 end

  #------------------------------------------------------------------------------

  #   class Portfolio

  #     attr_accessor :name, :stocks

  #     def initialize(name, stocks)
  #       @name = name
  #       @stocks = stocks

  #     end


  #   end
  # end
