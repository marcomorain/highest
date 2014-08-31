require 'set'

# Track the highest n numbers in a stream.
# usage:
# h = Highest.new(2)
# h << 4 << 5 << 6 << 7
# h.top.first
# => 7
class Highest

  # n: How many high numbers to track
  def initialize(n)
    @n = n
    @set = SortedSet.new
  end

  # value: the next numer in the sequence
  # This function returns self to allow chaining of calls
  def <<(value)
    unless @set.include?(value)
      if @set.size < @n
        @set.add(value)
      elsif value > @set.first
        @set.delete(@set.first)
        @set.add(value)
      end
    end
    self # To allow chaining
  end

  # Get an array of the top N numbers, in descending order
  def top
    @set.to_a.reverse
  end

  alias :add :<<
end