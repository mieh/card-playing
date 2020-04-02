class Deck
  attr_accessor :cards

  def initialize(cards)
    @cards = cards
  end

  def add_cards(cards)
    @cards += cards
  end

  def view_all_cards
    @cards.each do |card|
      puts card.view
    end
  end

  def shuffle(method)
    method.shuffle(@cards)
  end
end
