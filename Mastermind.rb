patter = [10, 2, 5, 4]
class Mastermind
    @@chooses =[1, 2, 3, 4, 5, 6]
    @@pattern = [5, 2, 1, 4]
    
    def initialize(form)
      @form = form
    end
    def test
      try = (@@pattern & @form)
      dab = try 
      print dab
    end

end

len = Mastermind.new(patter)
len.test