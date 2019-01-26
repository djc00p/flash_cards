class Turn
attr_reader :guess, :card

  def initialize(guess, card)
     @card = card
     @guess = guess
  end

  def correct?
    return @card.answer == @guess
  end

  def feedback
    if correct? == true
      puts "Correct!"
    elsif
      puts "Incorrect!"
    end
  end
end
