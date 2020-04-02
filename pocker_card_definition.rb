require_relative 'pocker_card'

class PockerCardDefinition
  CARD_SUITS = {'♣' => 0, '♦' => 1, '♥' => 2, '♠' => 3}
  CARD_RANKS = {'A' => 0,
                '2' => 1,
                '3' => 2,
                '4' => 3,
                '5' => 4,
                '6' => 5,
                '7' => 6,
                '8' => 7,
                '9' => 8,
                '10' => 9 ,
                'J' => 10 ,
                'Q' => 11 ,
                'K' => 12 }

  def generate_cards
    cards = []

    CARD_SUITS.each do |suit, suit_value|
      CARD_RANKS.each do |rank, rank_value|
        cards << PockerCard.new(rank, suit)
      end
    end

    cards
  end
end