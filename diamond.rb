class Diamond
  def self.create(max_letter)
    Diamond.new(max_letter)
  end

  def initialize(max_letter)
    @letters= ('A' .. max_letter).to_a
  end

  def either_letter_or_blank (position, letter)
    (position == letter) ? letter : '_'
  end

  def line_for_letter (letter)
    line= ""
    @letters.reverse.each { |position|
      line << either_letter_or_blank(position, letter)
    }
    @letters[1..-1].each { |position| 
      line << either_letter_or_blank(position, letter)
    }
    line << "\n"
  end

  def representation
    output= ""
    @letters.each { |letter| 
      output << line_for_letter(letter)
    }
    @letters.reverse[1..-1].each { |letter| 
      output << line_for_letter(letter)
    }
    output
  end
end
