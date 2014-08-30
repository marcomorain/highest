require_relative '../lib/highest.rb'

describe 'highest' do

  def highest(*args)
    h = Highest.new(3)
    args.each { |a| h << a }
    h.top
  end

  describe 'normal operation' do
    before(:each)  { @h = Highest.new(3) }

    it 'should start out empty' do
      expect(@h.top).to eq []
    end

    it 'should add the first 3 elements' do
      expect(highest(3)).to eq [3]
      expect(highest(3, 2)).to eq [3, 2]
      expect(highest(3, 2, 1)).to eq [3, 2, 1]
    end

    it 'should order the elements' do
      @h << 1 << 3 << 2
      expect(@h.top).to eq [3, 2, 1]
    end

    it 'should store the top N elements' do
      10.downto(1).each { |n| @h << n }
      expect(@h.top).to eq [10, 9, 8]
    end
  end
end