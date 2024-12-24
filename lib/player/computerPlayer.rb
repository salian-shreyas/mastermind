class Computer
  VALID_CHARS = ["R", "G", "B", "Y", "V", "P"]

  def get_code
    VALID_CHARS.shuffle[0..3]
  end
end