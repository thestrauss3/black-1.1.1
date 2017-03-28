require_relative "hand"

class Player
  attr_accessor :hand

  def initialize
    get_new_hand
  end

  def get_new_hand
    @hand = Hand.new
  end

  def hit(deck)
    card = deck.deal
    @hand.get_new_card(card)
    puts "Player was dealt #{card.rank}#{card.suit}"
  end

  def stand
    return @hand.calculate_total
  end
end
