require 'set'

class Highest
  def initialize(n)
    @n = n
    @set = SortedSet.new
  end

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

  def top
    @set.to_a.reverse
  end

  alias :add :<<
end