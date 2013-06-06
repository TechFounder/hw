require_relative 'stockmanagement'

describe Stockmanager do

  describe '#new' do
    it 'builds a new Stock Manager' do

      stock_manager1 = Stockmanager.new('Barclays', [])
      stock_manager1.should be_instance_of Stockmanager
      stock_manager1.name.should == 'Barclays'

    end
  end

  describe '#create_account' do
    it 'Adds new client to database' do
      stock_manager1 = Stockmanager.new('Barclays', [])
      client_account = Client.new('Tanay', [], 5000)
      stock_manager1.create_account(client_account)
      client_account.name.should == 'Tanay'

    end
  end

  describe '#client_lister' do
    it 'lists all the clients' do
      stock_manager1 = Stockmanager.new('Barclays', [])
      client_account = Client.new('Tanay', [], 5000)
      stock_manager1.create_account(client_account)
      stock_manager1.client_lister
    end
  end

  describe '#deposit' do
    it 'allows clients to deposit more money into their account' do
      stock_manager1 = Stockmanager.new('Barclays', [])
      client_account = Client.new('Tanay', [], 5000)
      stock_manager1.create_account(client_account)
      stock_manager1.deposit('Tanay', 100)
      p client_account.balance
      client_account.balance.should == 5100

    end
  end
end

#---------------------------------------------------------------------------------------

describe Client do

  describe '#new' do
    it 'creates a new client account' do

      client_account = Client.new('Tanay', [], 5000)
      client_account.should be_instance_of Client
      client_account.name.should == 'Tanay'
    end
  end

  describe '#create_portfolios' do
    it 'adds new portfolio to Client portfolio database ' do
      client_account = Client.new('Tanay', [], 5000)
      client_account.create_portfolio('Tech', {})
      client_account.account_portfolios.each do |portfolio|
        portfolio.should be_a_kind_of(Hash)
      end
      client_account.account_portfolios[0][:name].should == 'Tech'

    end
  end

  describe '#buy_stocks' do
    it 'helps clients buy stocks ' do
    client_account = Client.new('Tanay', [], 5000)
      client_account.create_portfolio('Tech', {})
    client_account.buy_stock('MSFT', 2, 300, "Tech")

    p client_account.account_portfolios[0][:stocks]
  end
end
end

#   describe '#'
# end

# #---------------------------------------------------------------------------------------

# describe Portfolio do

#   describe '#new' do
#     it 'creates a new portfolio' do

#       portfolio_1 = Portfolio.new('Tech', [])
#       portfolio_1.should be_instance_of Portfolio
#       portfolio_1.name.should == 'Tech'

#     end
#   end

# end
