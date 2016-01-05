require "bacon"

RSpec.describe Bacon do
	it "is edible" do
		expect(Bacon.new.edible?).to be(true)
		# alternatively
		expect(Bacon.new).to be_edible # will call the "edible" method. expect true (not nil or false)
	end
	
	it "can expire" do
		bacon = Bacon.new
		bacon.expired!
		expect(bacon).to_not be_edible
	end
end