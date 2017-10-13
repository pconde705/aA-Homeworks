class LRUCache
    def initialize(size)
      @array = []
      @size = size
    end

    def count
      # returns number of elements currently in cache
      @array.length
    end

    def add(el)
      # adds element to cache according to LRU principle
      if @array.include?(el)
        @array.delete(el)
        @array << el
      elsif @array.length >= @size
        @array.shift
        @array << el
      else
        @array << el
      end
    end

    def show
      # shows the items in the cache, with the LRU item first
      p @array.dup
    end

    private
    # helper methods go here!

  end

  johnny_cache = LRUCache.new(4)

    johnny_cache.add("I walk the line")
    johnny_cache.add(5)

    johnny_cache.count # => returns 2

    johnny_cache.add([1,2,3])
    johnny_cache.add(5)
    johnny_cache.add(-5)
    johnny_cache.add({a: 1, b: 2, c: 3})
    johnny_cache.add([1,2,3,4])
    johnny_cache.add("I walk the line")
    johnny_cache.add(:ring_of_fire)
    johnny_cache.add("I walk the line")
    johnny_cache.add({a: 1, b: 2, c: 3})


    johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]
