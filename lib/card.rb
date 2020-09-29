# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    raise ArgumentError, "That isn't a valid card." if value > 13 || value < 1

    @suit = suit
    valid_suit = [:hearts, :spades, :clubs, :diamonds]
    raise ArgumentError, "That isn't a valid suit" unless valid_suit.include?(suit)

  end

  def to_s
    case
    when value < 11 && value != 1
      return "#{value} of #{suit.to_s.capitalize}"
    when value == 1
      return "Ace of #{suit.to_s.capitalize}"
    when value == 11
      return "Jack of #{suit.to_s.capitalize}"
    when value == 12
      return "Queen of #{suit.to_s.capitalize}"
    when value == 13
      return "King of #{suit.to_s.capitalize}"
    end
  end
end


