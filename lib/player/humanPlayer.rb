class Player
  VALID_CHARS = ["R", "G", "B", "Y", "V", "P"]
  CODE_LENGTH = 4

  def get_code
    input = get_input
    validate_and_return(input)
  end

  private

  def get_input
    print "Enter #{CODE_LENGTH} characters (#{VALID_CHARS.join(', ')}): "
    gets.chomp.upcase.split(" ")
  end
  
  def validate_and_return(input)
    return get_code unless valid_length?(input)
    return get_code unless valid_chars?(input)
    input
  end
  
  def valid_length?(input)
    return true if input.length == CODE_LENGTH
    puts "Please enter exactly #{CODE_LENGTH} characters"
    false
  end
  
  def valid_chars?(input)
    return true if input.all? { |char| VALID_CHARS.include?(char) }
    puts "Invalid characters! Use only: #{VALID_CHARS.join(', ')}"
    false
  end
end