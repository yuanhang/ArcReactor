class BitVector
  attr_accessor :length
  attr_accessor :vector

  def initialize length
    @length = length
    @bytes_per_word = 0.size
    @vector = Array.new((@length - 1)/@bytes_per_word + 1, 0)
  end

  def [](position)
    word = @vector[position/@bytes_per_word]
    position_in_word = position % @bytes_per_word
    return (word & 1 << position_in_word) >> position_in_word
  end

  def insert position
    position_in_word = position % @bytes_per_word
    @vector[position/@bytes_per_word] |= 1 << position_in_word
  end

  def remove position
    position_in_word = position % @bytes_per_word
    @vector[position/@bytes_per_word] &= ~(1 << position_in_word)
  end
end
