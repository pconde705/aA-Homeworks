require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("swedish_chef") }
  let(:dessert) { Dessert.new("pastry", 10, chef) }
  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq "pastry"
    end

    it "sets a quantity" do
      expect(dessert.quantity).not_to eq 99
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).not_to eq [].length > 1
    end

    it "raises an argument error when given a non-integer quantity" do
      expect(dessert.quantity).to eq raise_error(ArgumentError) if !dessert.quantity.is_a?Integer
    end

  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(dessert.ingredients).not_to include("flour")
      dessert.add_ingredient("flour")
      expect(dessert.ingredients). to include("flour")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expect(dessert.ingredients).to eq([])
      dessert.add_ingredient("flour")
      dessert.add_ingredient("salt")
      dessert.mix!
      expect(dessert.ingredients).not_to eq([])
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(dessert.quantity).to eq 10
      dessert.eat(5)
      expect(dessert.quantity).to eq 5
    end

    it "raises an error if the amount is greater than the quantity" do
      expect(dessert.quantity).to eq raise_error("not enough left!") if dessert.quantity > 10

    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize)
      expect(dessert.serve).not_to include("swedish_chef")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(Dessert)
      dessert.make_more
    end

  end
end
