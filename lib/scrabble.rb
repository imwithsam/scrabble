class Scrabble
  def score(word)
    if !word.nil?
      letter_scores = word.each_char.map do |char|
        self.point_values[char.upcase]
      end

      word_score = letter_scores.reduce(:+)

      if word_score.nil?
        0
      else
        word_score
      end
    else
      0
    end
  end

  def point_values
    {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10
    }
  end
end

# game = Scrabble.new
# puts game.score("hello")
# puts game.score("")
# puts game.score(nil)
