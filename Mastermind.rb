class Mastermind
  a = (0..5).to_a.shuffle
  a.pop
  a.shift
  @@chooses = [0,1, 2, 3, 4, 5]
  @@pattern = a
  private
  def initialize
    @guess
    p @@pattern
    start
  end
  
  def match
    @size = (@@pattern & @guess)
    square

  end
  
  def square
    grid = Array.new(@size.length, "white")
    print grid
  end
  
  def start
    i = 1
    
    while i < 8
      puts "put a number for the guess four times"
      @guess = [gets.chomp.to_i,gets.chomp.to_i,gets.chomp.to_i,gets.chomp.to_i]
      p @guess
      match

    end
  end
  
end

len = Mastermind.new
len