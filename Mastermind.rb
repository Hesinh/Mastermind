guess = [10, 2, 5, 4]

class Mastermind
  @@chooses = [0,1, 2, 3, 4, 5]
  @@pattern = [rand(6), rand(6), rand(6), rand(6)]
    
  def initialize(guess)
    @guess = guess
  end
  
  def match
    @try = (@@pattern & @guess)
    print @try
    square
    print @@pattern
  end
  
  def square
    grid = Array.new(@try.length, "white")
    print grid
  end
end

len = Mastermind.new(guess)
len.match