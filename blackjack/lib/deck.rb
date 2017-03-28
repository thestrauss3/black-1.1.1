class Deck
  SUITS = [:♦, :♣, :♠, :♥]
  RANKS = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]

  attr_accessor :cards

  def initialize
    @cards = build_deck
  end

  def build_deck
    cards = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        card = Card.new(suit, rank)
        cards << card
      end
    end
    cards.shuffle!
  end

  def deal
    cards.pop
  end
end
