# frozen_string_literal: true

puts 0.zero?
puts 15.zero?

puts 2.even?
puts 3.even?

puts 11.odd?
puts 16.odd?

puts [].empty?

RSpec.describe 'predicate methods and predicate matchers' do
  it 'can be test with methods' do
    result = 16 / 2
    expect(result.even?).to eq(true)
  end

  it 'can be tested wuth predicate matchers' do
    expect(16 / 2).to be_even
    expect(15).to be_odd
    expect(0).to be_zero
    expect([]).to be_empty
  end
end
