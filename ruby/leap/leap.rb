module Year
  def self.leap?(year)
    return false unless (year % 4).zero?
    return false if (year % 4).zero? && (year % 100).zero? && year % 400 != 0

    true
  end
end
