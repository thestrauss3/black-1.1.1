class Card
  attr_reader :suit, :rank

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end

  def get_value
    if (@rank == "K" || @rank == "Q" || @rank == "J")
      return 10
    elsif @rank == "A"
      return 11
    else
      return @rank.to_i
    end
  end
end
