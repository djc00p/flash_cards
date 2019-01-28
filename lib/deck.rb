class Deck
  attr_accessor :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    @cards = 3
  end

  def cards_in_category
    @cards.find_all do |cards|
      cards.category
    end
  end
end
