
ARRAY_OF_FISH = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
TILES_ARRAY = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def sluggish_octopus
  big_fish = ""
  i = 0
  while i < ARRAY_OF_FISH.length
    j = 0
    while j < ARRAY_OF_FISH.length
      big_fish = ARRAY_OF_FISH[i] if ARRAY_OF_FISH[i] > ARRAY_OF_FISH[j]
      j += 1
    end
    i += 1
  end
  big_fish
end


class Array
  def dominant_octopus(&prc)
    return self if self.length < 2
    prc ||= Proc.new {|a, b| a.length<=>b.length}
    mid = self.length / 2
    left_arr = self.take(mid)
    right_arr = self.drop(mid)
    left_sorted = left_arr.dominant_octopus(&prc)
    right_sorted = right_arr.dominant_octopus(&prc)
    self.class.sort_fish(left_sorted, right_sorted, &prc)
  end

  def self.sort_fish(left, right, &prc)
    result = []
    until left.empty? || right.empty?
      if prc.call(left.first, right.first) == -1
        result << left.shift
      elsif prc.call(left.first, right.first) == 1
        result << right.shift
      else
        result << left.shift
      end
    end
    result.concat(left)
    result.concat(right)
  end
end

def resulting_fish
  ARRAY_OF_FISH.dominant_octopus[-1]
end

def clever_octopus
  biggest = ""
  ARRAY_OF_FISH.each do |el|
    biggest = el if el.length > biggest.length
  end
  biggest
end


def slow_dance(direction, tiles_array)
  count = 0
  tiles_array.each do |el|
    if el == direction
      break
    else
      count+=1
    end
  end
  count
end

def constant_dance(direction)
  TILES_ARRAY.index(direction)
end
