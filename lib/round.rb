class Round
  attr_reader :deck

  def initialize(deck)
    @deck = deck
  end

  def current_card
    @deck.each do |deck|
      deck.cards
    end
  end

  def take_turn(answer)
    @deck



  end



end
