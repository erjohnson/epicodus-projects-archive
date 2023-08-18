class Space

  attr_accessor :marked_by

  def initialize num
    @space_num = num
    @marked_by = num.to_s
  end

  def mark_space symbol
    @marked_by = symbol
  end

end
