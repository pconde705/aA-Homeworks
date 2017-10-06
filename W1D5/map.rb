class Map

  def initialize
    @map = []
  end

  def assign(key, value)
    @map.each do |array|
      array[0][1] = value if array[0] == key
    end
    @map << [key, value]
  end

  def lookup(key)
    @map.each do |array|
      return array if array[0] == key
    end
  end

  def remove(key)
    @map.each do |array|
      @map.delete_at(@map.index(array)) if array[0] == key
    end
  end
end
