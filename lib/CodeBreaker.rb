class CodeBreaker
  attr_reader :code

  def get_code
    puts "Enter code: "
    self.code = gets.chomp.split(" ")
  end 

  private
  attr_writer :code
end