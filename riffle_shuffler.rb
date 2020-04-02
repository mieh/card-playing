class RiffleShuffler
  def shuffle(cards)
    two_halves_of_deck = split_into_two_halves(cards)

    shuffled = []
    while(two_halves_of_deck[0].size > 0 && two_halves_of_deck[1].size > 0) do
      shuffled << two_halves_of_deck[0].shift
      shuffled << two_halves_of_deck[1].shift
    end

    shuffled += two_halves_of_deck[0] + two_halves_of_deck[1]
    shuffled
  end

  def split_into_two_halves(cards)
    result = cards.each_slice(cards.size/2).to_a
    result
  end
end