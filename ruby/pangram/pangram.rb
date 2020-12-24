module Pangram
  def self.pangram?(sentence)
    letters_used = ''
    sentence.downcase.gsub(/[^a-z]/, '').each_char do |c|
      letters_used << c unless letters_used.include?(c)
    end
    letters_used.size == 26
  end
end
