require "vending_machine"

describe VendingMachine do

  subject(:vending_machine) { described_class.new }

  describe "Inserting coins" do
    context "when no coins are inserted" do
      it "displays 'INSERT COIN'" do
        expect(vending_machine.message).to eq("INSERT COIN")
      end
    end
  end
end
