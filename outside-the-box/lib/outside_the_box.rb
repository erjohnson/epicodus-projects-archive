class Box
  def initialize length, width
    @length = length.to_i
    @width = width.to_i
  end
  def find_type
    if @length == @width
      puts "Your Box is a Square"
      puts "\nPress enter to continue..."
      gets
      system "clear"
    else
      puts "Your Box is a Rectangle"
      puts "\nPress enter to continue..."
      gets
      system "clear"
    end
  end
  def draw_box
    tl_corner = "╔"
    horiz_side = "══" * @width.to_i
    tr_corner = "╗"
    vert_side = "║" + "░░" * @width.to_i + "║"
    br_corner = "╝"
    bl_corner = "╚"

    puts tl_corner + horiz_side + tr_corner
    1.upto(@length.to_i) { puts vert_side }
    puts bl_corner + horiz_side + br_corner
  end
end
