class Diamond
  def self.create(max_letter)
    Diamond.new(max_letter)
  end

  def initialize(max_letter)
    @letters= ('A' .. max_letter).to_a
  end

  def representation
    output= ""
    @letters.each { |letter| 
      @letters.reverse.each { |position|
	character= (position == letter) ? letter : '_'
	output << character
      }
      output << "\n"
    }
    @letters.reverse[1..-1].each { |letter| 
      output << letter+"\n"
    }
    output
  end
end
