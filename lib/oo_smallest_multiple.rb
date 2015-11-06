class SmallestMultiple
  def initialize(num)
    @num = num
  end

  def lcm
    (@num..Float::INFINITY).step(@num).each do |multiple|
      (2..@num).each do |div|
        break unless multiple % div == 0
        return multiple if div == @num
      end
    end
  end
end