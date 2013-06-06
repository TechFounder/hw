require_relative 'stock'

describe Master do
	describe '#new' do
		it "build new master with a name" do
			master = Master.new('MasterSystem')
			master.should be_instance_of Master
			master.name.should == "MasterSystem"
		end	
	end


end