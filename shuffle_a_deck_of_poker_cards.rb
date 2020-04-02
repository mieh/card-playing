# phase 2: shuffle deck of poker cards
require_relative 'card_generator.rb'
require_relative 'pocker_card_definition.rb'
require_relative 'deck.rb'
require_relative 'simple_shuffler.rb'
require_relative 'riffle_shuffler.rb'

card_generator = CardGenerator.instance
pocker_card_definition = PockerCardDefinition.new

deck = Deck.new(card_generator.generate(pocker_card_definition))

deck.shuffle(SimpleShuffler.new)
deck.view_all_cards
puts "above using simple shuffle"

deck = Deck.new(card_generator.generate(pocker_card_definition))

deck.shuffle(SimpleShuffler.new)
deck.view_all_cards
puts "above using riffle shuffle"


