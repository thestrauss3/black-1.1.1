require "spec_helper"

RSpec.describe Card do
  king = Card.new(SUITS[0], "K")
  ace = Card.new(SUITS[2], "A")
  seven = Card.new(SUITS[1], "7")

  describe "#get_value" do

    it "gets the value of a King => 10" do
      expect(king.get_value).to eq 10
    end

    it "gets the value of an Ace => 11" do
      expect(ace.get_value).to eq 11
    end

    it "gets the values of a 7 => 7" do
      expect(seven.get_value).to eq 7
    end

  end

end
