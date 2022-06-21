guess = [10, 2, 5, 4]

class Mastermind
  @@chooses =[1, 2, 3, 4, 5, 6]
  @@pattern = [5, 2, 1, 4]
    
  def initialize(guess)
    @guess = guess
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
end

len = Mastermind.new(guess)
len.match