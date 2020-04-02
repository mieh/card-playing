require 'spec_helper'
require '../card_generator.rb'
require '../pocker_card_definition.rb'
require '../deck.rb'
require '../simple_shuffler.rb'
require '../riffle_shuffler.rb'

describe Deck do
  let (:card_generator)  { CardGenerator.instance }
  let (:pocker_card_definition) { PockerCardDefinition.new }
  let (:deck) { Deck.new(card_generator.generate(pocker_card_definition)) }
  let (:simple_shuffler) { SimpleShuffler.new }
  let (:riffle_shuffler) { RiffleShuffler.new }
  let (:mint_deck) { Deck.new(card_generator.generate(pocker_card_definition)) }

  context "shuffle with simple shuffler" do
    it "should have 52 unique cards" do
      deck.shuffle(simple_shuffler)

      expect( deck.cards.map { |card| card.view }.uniq.size ).to eq 52
    end

    it "should entirely different stack from previous stack" do
      deck.shuffle(simple_shuffler)

      expect( deck.cards ).not_to be == mint_deck
    end
  end

  context "shuffle with rifflee shuffler" do
    it "should have 52 unique cards" do
      deck.shuffle(simple_shuffler)

      expect( deck.cards.map { |card| card.view }.uniq.size ).to eq 52
    end

    it "should entirely different stack from previous stack" do
      deck.shuffle(riffle_shuffler)

      expect( deck.cards ).not_to be == mint_deck
    end
  end
end