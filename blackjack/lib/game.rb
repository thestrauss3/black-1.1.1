class Game
  attr_reader :player, :dealer, :deck
  def initialize(player, dealer, deck)
    @player = player
    @dealer = dealer
    @deck = deck
  end

  def get_input
    announce_score
    print "Would you like to hit again? (h/s): "
    gets.chomp
  end

  def get_action
    input = 's'
    if (@player.hand.calculate_total <= 21)
      input = get_input
    end

    while ((input.downcase != 's') && (@player.hand.calculate_total <= 21))
      if (input.downcase == 'h')
        @player.hit(@deck)
      else
        puts "Not a valid input, please enter 'h' to hit or 's' to stand"
      end
      if (@player.hand.calculate_total <= 21)
        input = get_input
      end
    end
  end

  def announce_score
    puts "the Player score is #{@player.hand.calculate_total}"
    puts "Dealer score is #{@dealer.hand.calculate_total}"
  end

  def self.did_the_player_bust(card_holder)
    if card_holder.hand.calculate_total > 21
      return true
    else
      return false
    end
  end

  def announce_winner
    announce_score


    if (@player.hand.calculate_total > @dealer.hand.calculate_total) && !Game.did_the_player_bust(@player)
      puts "Player wins! Winner Winner Chicken Dinner!!"
    elsif !Game.did_the_player_bust(@player) && Game.did_the_player_bust(@dealer)
      puts "Player wins! Winner Winner Chicken Dinner!!"
    else
      puts "Dealer wins."
    end
  end
end
