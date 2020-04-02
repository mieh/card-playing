# phase 1: generate deck of poker cards
require_relative 'card_generator.rb'
require_relative 'pocker_card_definition.rb'
require_relative 'deck.rb'

card_generator = CardGenerator.instance
pocker_card_definition = PockerCardDefinition.new

deck = Deck.new(card_generator.generate(pocker_card_definition))

deck.view_all_cards
