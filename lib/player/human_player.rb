# frozen_string_literal: true

# Manage human-player functionalities
class Player
  VALID_CHARS = %w[R G B Y V P].freeze
  VALID_FEEDBACK_CHARS = %w[r w].freeze
  CODE_LENGTH = 4

  def get_code
    input = get_input
    validate_and_return_code(input)
  end

  def provide_feedback(guess_code)
    puts "Computer guess code: #{guess_code}"
    feedback = get_feedback
    validate_and_return_feedback(feedback)
  end

  private

  def get_input
    print "Enter #{CODE_LENGTH} character secret code (#{VALID_CHARS.join(', ')}): "
    gets.chomp.upcase.split(' ')
  end

  def get_feedback
    puts 'Enter feedback'
    puts "Enter 'r' for red and 'w' for white or skip if none: "
    gets.chomp.downcase.split(' ')
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
    return true if feedback.all? { |char| VALID_FEEDBACK_CHARS.include?(char) }

    puts "Invalid characters! Use only: #{VALID_FEEDBACK_CHARS.join(', ')}"
    false
  end
end
