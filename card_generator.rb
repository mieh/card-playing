# singleton Class CardGenerator
class CardGenerator
  @instance = new

  private_class_method :new

  def self.instance
    @instance
  end

  def generate(card_specs)
    card_specs.generate_cards
  end
end

