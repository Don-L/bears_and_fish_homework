class Bear

  attr_accessor :name, :type, :food_array

  def initialize(name, type, food_array)
    @name = name
    @type = type
    @food_array = food_array
  end

  def roar
    return 'ROAR!'
  end

  def take_fish(river)
    if river.length != 0
    @food_array = @food_array.push(river.pop.name)
    else
      @food_array = @food_array
    end
    return @food_array
  end

end

######################################################################
######################################################################

class Fish

  attr_accessor :name

  def initialize(name)
    @name = name
  end

end

######################################################################
######################################################################

class River

  attr_accessor :fishes

  def initialize(fishes)
    @fishes = fishes
  end

end