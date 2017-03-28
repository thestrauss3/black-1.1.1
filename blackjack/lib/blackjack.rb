require_relative "card"
require_relative "deck"
require_relative "dealer"
require_relative "player"
require_relative "game"
require 'pry'

deck = Deck.new
player = Player.new
dealer = Dealer.new
# Your code here...
dealer.start_game(deck, player)
game = Game.new(player, dealer, deck)


game.get_action

dealer.play(deck)
game.announce_winner
