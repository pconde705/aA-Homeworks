class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14)
    @name1 = name1
    @name2 = name2
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.map! { |e| e = [:stone, :stone, :stone, :stone] }
    @cups[6] = []
    @cups[13] = []
  end

  def valid_move?(start_pos)
    raise Exception.new("Invalid starting cup") if @cups[start_pos].nil? || @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)

    stones = @cups[start_pos].length
    @cups[start_pos] = []
    beg = start_pos
    i = 0
    while i < stones
      if beg + i + 1 == 13
        beg = 0
      end
      @cups[beg + i + 1] << :stone
      i += 1
    end
    next_turn(@cups[beg + stones])
    render
    return :prompt if start_pos + stones == 13
    return :switch if @cups[start_pos + stones].nil?
    start_pos + stones
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
  end


  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    return true if @cups[0..6].all? { |e| e.empty? } || @cups[7..12].all? { |e| e.empty? }
    false
  end

  def winner
    if @cups[13].length == @cups[6].length
      return :draw
    elsif @cups[13].length > @cups[6].length
      return @name2
    else
      return @name1
    end
  end
end

bro = Board.new("Jack", "Jillian")
p bro.render
