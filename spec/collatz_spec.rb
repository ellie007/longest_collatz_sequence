require 'collatz'

describe LongestCollatzSequence do

  let(:collatz) { LongestCollatzSequence.new }

  it 'finds the longest colllatz sequence' do
    expect(collatz.find_longest_collatz_sequence).to eq(837799)
  end

end
