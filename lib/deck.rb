# deck.rb
require_relative 'card'

class Deck
  attr_reader :cards

  def initialize
    @cards = []
    %i[hearts spades clubs diamonds].each do |suit|
      (1..13).each do |value|
        card = Card.new(value, suit)
        @cards << card
      end
    end

  end

  def draw
    return @cards[0]
  end

  def shuffle
    @cards.shuffle
  end

  def count
    @cards.length
  end
end
