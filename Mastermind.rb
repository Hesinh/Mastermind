class Mastermind
    @@chooses =[1, 2, 3, 4, 5, 6]
    @@pattern = [5, 2, 1, 4]

    def test
      try = @@pattern.each {|element| element == @@chooses}
      print try.length
    end

end

len = Mastermind.new()
len.test