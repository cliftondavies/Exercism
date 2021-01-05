# Creates an instance of a single dart toss
# Takes in the coordinates of where the dart lands
# Calculates the score using the center-radius form of the circle equation:
# (x – h)^2 + (y – k)^2 = r^2
class Darts
  def initialize(x_coord, y_coord)
    @x = x_coord
    @y = y_coord
  end

  def score
    radius = Math.sqrt(((@x - 0)**2) + ((@y - 0)**2))
    return 10 if radius <= 1
    return 5 if radius <= 5
    return 1 if radius <= 10

    0
  end
end
