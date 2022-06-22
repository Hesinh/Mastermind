class Mastermind
  @@chooses = [0,1, 2, 3, 4, 5]
  @@pattern = [rand(6).to_s, rand(6).to_s, rand(6).to_s, rand(6).to_s]
    
  def initialize
    @guess
    p @@pattern
    start
  end
  
  def match
    @try = (@@pattern & @guess)
    print @try
    square

  end
  
  def square
    grid = Array.new(@try.length, "white")
    print grid
  end
  
  def start
    i = 0
    
    while i < 7
      @guess = [gets.chomp,gets.chomp,gets.chomp,gets.chomp]
      p @guess
      match
      puts "please, make an array with 4 numbers,separated with comma"
    end
  end
  
end

len = Mastermind.new
len.match