class LongestCollatzSequence

  def initialize
    @longest_collatz_number = 0
    @longest_chain_length = 0
  end

  def find_longest_collatz_sequence
    (1..1000000).each do |num|
      @current_chain_length = 0
      perform_collatz_sequence(num)
      if @current_chain_length > @longest_chain_length
        @longest_chain_length = @current_chain_length
        @longest_collatz_number = num
      end
    end
    @longest_collatz_number
  end

  def perform_collatz_sequence(n)
    return n if n == 1
    if n.odd?
      n = 3 * n + 1
    elsif n.even?
      n /= 2
    end
    perform_collatz_sequence(n)
    @current_chain_length += 1
  end

end
