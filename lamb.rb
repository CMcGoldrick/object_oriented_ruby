class Sheep
  @@count = 0   # class variable (can't access this outside of the class)

  def initialize
    @@count += 1
    @count = @@count # instance variable
    fed = true  # local variable
  end

  def how_many
    return @@count
  end
end

