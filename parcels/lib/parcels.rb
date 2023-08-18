class Parcel
  def initialize (height, length, width, weight)
    @height = height
    @length = length
    @width = width
    @weight = weight
  end

  def find_volume
    @volume = @height * @length * @width
  end

  def cost_to_ship
    @cost = (find_volume + @weight) * 2
  end

  def modify(height, length, width, weight)
    @height = height
    @length = length
    @width = width
    @weight = weight
  end
end
