class Hand
  attr_accessor :cards

  def initialize
    @cards = []
  end

  def get_new_card(card)
    @cards << card
  end

  def calculate_total
    total = 0
    ace_count = 0
    @cards.each do |card|
      total += card.get_value
      if card.get_value == 11
        ace_count += 1
      end
    end
    while (total > 21) && (ace_count > 0) do
      total -= 10
      ace_count -= 1
    end
    return total
  end
end
