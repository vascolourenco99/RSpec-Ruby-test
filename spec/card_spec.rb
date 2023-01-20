# frozen_string_literal: true

class Card
  attr_accessor :type, :number

  def initialize(type, number)
    @type = type
    @number = number
  end
end

RSpec.describe Card do
  # let be created
  let(:card) { Card.new('Spades', 'Ace') }

  it 'has a type' do
    expect(card.type).to eq('Spades')
  end

  it 'has a number and that number can change' do
    expect(card.number).to eq('Ace')
    card.number = 'Queen'
    expect(card.number).to eq('Queen')
  end

  it 'has a custom error message' do
    card.type = 'Nonsense'
    comparison = 'Spades'
    expect(card.type).to eq(comparison), "I expected #{comparison} but I got #{card.type}"
  end
end

# RSpec.describe Card do
#   def card
#     Card.new('Spades', 'Ace')
#   end

#   it 'has a type' do
#     expect(card.type).to eq('Spades')
#   end

#   it 'has a number and that number can change' do
#     expect(card.number).to eq('Ace')
#   end
# end

# RSpec.describe Card do
#   before do
#     @card = Card.new('Spades', 'Ace')
#   end

#   it 'has a type' do
#     expect(@card.type).to eq('Spades')
#   end

#   it 'has a number' do
#     expect(@card.number).to eq('Ace')
#   end
# end
