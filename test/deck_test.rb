require_relative 'test_helper'

describe Deck do
  it 'should be able to be instantiated' do
    deck = Deck.new

    expect(deck).must_be_instance_of Deck
  end

  it 'should have 52 cards' do
    deck = Deck.new

    expect(deck.count).must_equal 52
  end

  it 'draws a card instance' do
    deck = Deck.new
    expect(deck.draw).must_be_instance_of Card
  end

  it 'draws a card, hopefully random' do
    deck = Deck.new
    expect(deck.shuffle).must_be_instance_of Array
  end
end

