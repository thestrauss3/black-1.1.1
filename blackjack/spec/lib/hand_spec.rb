require "spec_helper"

describe Hand do
  king = Card.new(SUITS[0], "K")
  ace = Card.new(SUITS[2], "A")
  seven = Card.new(SUITS[1], "7")

  describe "#calculate_total" do

    it "adds the value of each card to give a total" do
      hand = Hand.new
      hand.get_new_card(king)
      hand.get_new_card(seven)
      expect(hand.calculate_total).to eq 17
      hand = Hand.new
      hand.get_new_card(seven)
      hand.get_new_card(ace)
      expect(hand.calculate_total).to eq 18
    end

    it "allows ace to equal 1 if 11 would cause a bust" do
      hand = Hand.new
      hand.get_new_card(ace)
      hand.get_new_card(ace)
      expect(hand.calculate_total).to eq 12
    end


  end

  describe "#"
end
