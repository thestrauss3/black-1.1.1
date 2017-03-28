require_relative "hand"

class Dealer
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
    puts "Dealer was dealt #{card.rank}#{card.suit}"
  end

  def stand
    return @hand.calculate_total
  end

  def start_game(deck, player)
    2.times do
      player.hit(deck)
      hit(deck)
    end
  end

  def play(deck)
    while @hand.calculate_total < 17 do
      hit(deck)
    end
  end
end
