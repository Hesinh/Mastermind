class Mastermind
  
  private
  def initialize
    cpu_guess
    start
  end

  def cpu_guess
    a = (0..5).to_a.shuffle
    a.pop
    a.shift
    @pattern = a
  end
  
  def match
    @size = (@pattern & @guess)
    i = 0
    test = 0
    while i < 4
      if @pattern[i] == @guess[i]
        test += 1
      end
      i += 1
    end
    puts "#{@size.length} match found"
    puts "#{test} match are in the right position"
  end

  
  def start
    p @pattern
    puts "Welcome to MasterMind, you need to guess what is the pattern that i have, if your guess is correct in 8 TURNS , YOU WIN"
    
    i = 1
    while i < 9
      puts "put a number for the guess four times :TURN#{i}"
      @guess = [gets.chomp.to_i,
        gets.chomp.to_i,
        gets.chomp.to_i,
        gets.chomp.to_i]
      puts "your guess is #{@guess}"
      match
      i +=1
    end
  end
  
end

len = Mastermind.new
len