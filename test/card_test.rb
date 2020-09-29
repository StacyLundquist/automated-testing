require_relative 'test_helper'

describe Card do
  describe 'You can create a Card instance' do

    it 'Can be created' do
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          expect(card).must_be_instance_of Card
        end
      end
    end

    it 'Raises an ArgumentError for invalid parameters' do
      # To raise an ArgumentError in card.rb
      # raise ArgumentError.new
      expect {Card.new(0, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :clovers)}.must_raise ArgumentError
    end
  end

  describe 'Testing to_s' do

    it 'to_s returns a readable String value logically for values 2-10' do
      card = Card.new(2, :diamonds)
      card2 = Card.new(10, :spades)
      card3 = Card.new(5, :hearts)

      expect(card.to_s).must_equal '2 of Diamonds'
      expect(card2.to_s).must_equal '10 of Spades'
      expect(card3.to_s).must_equal '5 of Hearts'
    end

    it 'to_s returns a readable String value for Ace, Jack, Queen, King' do
      card = Card.new(1, :diamonds)
      card2 = Card.new(11, :spades)
      card3 = Card.new(12, :hearts)
      card4 = Card.new(13, :clubs)

      expect(card.to_s).must_equal 'Ace of Diamonds'
      expect(card2.to_s).must_equal 'Jack of Spades'
      expect(card3.to_s).must_equal 'Queen of Hearts'
      expect(card4.to_s).must_equal 'King of Clubs'
    end
  end

  describe 'Reader methods' do

    it 'Can retrieve the value of the card using a `.value`.' do
      # ensure that `.value works as expected`
    end

    it 'Can retrieve the value of the card using a `.suit`.' do
      # ensure that `.suit works as expected returning the symbol of the suit`

    end
  end

end
