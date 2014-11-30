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

  def representation
    output= ""
    @letters.each { |letter| 
      @letters.reverse.each { |position|
	output << either_letter_or_blank(position, letter)
      }
      @letters[1..-1].each { |position| 
	output << either_letter_or_blank(position, letter)
      }
      output << "\n"
    }
    @letters.reverse[1..-1].each { |letter| 
      output << letter+"\n"
    }
    output
  end
end
