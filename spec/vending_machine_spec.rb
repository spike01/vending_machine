require "vending_machine"

describe VendingMachine do

  subject(:vending_machine) { described_class.new }

  describe "Inserting coins" do
    context "when no coins are inserted" do
      it "displays 'INSERT COIN'" do
        expect(vending_machine.message).to eq("INSERT COIN")
      end
    end

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

    it "accepts quarters" do
      quarter = double(:coin, weight: 5.67)
      vending_machine.insert(quarter)
      expect(vending_machine.message).to eq("0.25")
    end

    it "rejects any other coin" do
      penny = double(:coin, weight: 2.5)
      vending_machine.insert(penny)
      expect(vending_machine.message).to eq("INSERT COIN")
    end

    it "adds valid coins together" do
      quarter = double(:coin, weight: 5.67)
      dime = double(:coin, weight: 2.26)
      vending_machine.insert(quarter)
      vending_machine.insert(dime)
      expect(vending_machine.message).to eq("0.35")
    end
  end
end
