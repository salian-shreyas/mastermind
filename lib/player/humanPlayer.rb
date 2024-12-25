class Player
  VALID_CHARS = ["R", "G", "B", "Y", "V", "P"]
  VALID_FEEDBACK_CHARS = ["r", "w"]
  CODE_LENGTH = 4

  def get_code
    input = get_input
    validate_and_return_code(input)
  end

  def provide_feedback(guess_code)
    puts "Guess code: #{guess_code}"
    feedback = get_feedback
    validate_and_return_feedback(feedback)
  end

  private

  def get_input
    print "Enter #{CODE_LENGTH} characters (#{VALID_CHARS.join(', ')}): "
    gets.chomp.upcase.split(" ")
  end

  def get_feedback
    puts "Enter feedback characters (#{VALID_FEEDBACK_CHARS.join(', ')}) or skip if none: "
    gets.chomp.downcase.split(" ")
  end
  
  def validate_and_return_code(input)
    return get_code unless valid_length?(input)
    return get_code unless valid_chars?(input)
    input
  end
  
  def validate_and_return_feedback(feedback)
    return get_feedback unless valid_feedback_length?(feedback) 
    return get_feedback unless valid_feedback_chars?(feedback)
    feedback
  end
  
  def valid_length?(input)
    return true if input.length == CODE_LENGTH
    puts "Please enter exactly #{CODE_LENGTH} characters"
    false
  end

  def valid_feedback_length?(input)
    return true if input.length <= CODE_LENGTH
    puts "Please enter #{CODE_LENGTH} characters or less"
    false
  end
  
  def valid_chars?(input)
    return true if input.all? { |char| VALID_CHARS.include?(char) }
    puts "Invalid characters! Use only: #{VALID_CHARS.join(', ')}"
    false
  end

  def valid_feedback_chars?(feedback)
    return true if input.all? { |char| VALID_FEEDBACK_CHARS.include?(char) }
    puts "Invalid characters! Use only: #{VALID_FEEDBACK_CHARS.join(', ')}"
    false
  end
end