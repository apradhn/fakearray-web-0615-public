require "pry"

class FakeArray
  attr_accessor :array

  # you'll need a splat in this class somewhere
  def initialize(*num)
    @array = num
  end

  def [](num)
    @array[num]
  end

  def each
    size = @array.size
    size.times do |i|
      yield(@array[i-1])
    end
  end

  def first
    @array.first
  end

end