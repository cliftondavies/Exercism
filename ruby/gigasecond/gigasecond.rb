module Gigasecond
  def self.from(date_of_birth)
    Time.at(date_of_birth.to_i + 1_000_000_000).getgm
  end
end
