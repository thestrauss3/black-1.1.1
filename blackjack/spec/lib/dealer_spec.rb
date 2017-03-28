require "spec_helper"

describe Dealer do
  player = nil
  deck = nil
  dealer = nil
  card = Card.new(SUITS[0], "K")
  before(:example) do
    player = Player.new
    deck = Deck.new
    dealer = Dealer.new
  end


  it "player starts with 0 cards" do
    expect(player.hand.cards.size).to eq 0
  end

  describe "#hit" do
    it "gives the player a card" do
      player.hit(card)
      expect(player.hand.cards.size).to eq 1
    end
  end

  describe "#stand" do
    it "doesn't give a card and displays score" do
      expect(player.stand).to eq 0
    end
  end

  describe "#start_game" do
    it "deals 2 cards to both the player and dealer" do
      dealer.start_game(deck, player)
      expect(player.hand.cards.size).to eq 2
      expect(dealer.hand.cards.size).to eq 2
    end
  end

end
