module Acronym
  def self.abbreviate(phrase)
    phrase.split(/\W+/).reduce('') { |acronym, word| acronym << word[0] }.upcase
  end
end
