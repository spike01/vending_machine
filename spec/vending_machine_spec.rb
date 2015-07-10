require "vending_machine"

describe VendingMachine do

  subject(:vending_machine) { described_class.new }

  describe "Inserting coins" do
    context "when no coins are inserted" do
      it "displays 'INSERT COIN'" do
        expect(vending_machine.message).to eq("INSERT COIN")
      end
    end

    context "when inserting valid coins" do
      it "accepts nickels" do
        nickel = double(:coin, weight: 5)
        vending_machine.insert(nickel)
        expect(vending_machine.message).to eq("0.05")
      end

      it "accepts dimes" do
        dime = double(:coin, weight: 2.26)
        vending_machine.insert(dime)
        expect(vending_machine.message).to eq("0.10")
      end
    end
  end
end
