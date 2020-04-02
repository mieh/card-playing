class PockerCard
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def view
    "#{@rank}#{@suit}"
  end
end
