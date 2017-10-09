class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over == true
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    if @game_over == false
      round_success_message
      @sequence_length += 1
    end
    show_sequence
    require_sequence
  end

  def show_sequence
    add_random_color
    puts @seq
    sleep(1)
    system("clear")
  end

  def require_sequence
    puts "Colors please, no commas."
    answer = gets.chomp.split
    if @seq != answer
      @game_over = true
    end
  end

  def add_random_color
    @seq << COLORS.shuffle.last
  end

  def round_success_message
    puts "Keep going!"
  end

  def game_over_message
    puts "Game Over!"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end

if __FILE__ == $PROGRAM_NAME
  sim = Simon.new
  sim.play
end
