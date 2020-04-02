require 'spec_helper'
require '../card_generator.rb'
require '../pocker_card_definition.rb'

describe CardGenerator do
  context "generate pocker cards" do
    it "should have 52 unique cards" do
      card_generator = CardGenerator.instance
      pocker_card_definition = PockerCardDefinition.new

      deck = card_generator.generate(pocker_card_definition)

      expect( deck.map { |card| card.view }.uniq.size ).to eq 52
    end
  end
end