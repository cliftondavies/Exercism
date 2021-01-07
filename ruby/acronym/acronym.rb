# A program that converts a long name like
# Portable Network Graphics to its acronym (PNG).
module Acronym
  def self.abbreviate(phrase)
    phrase.split(/\W+/).reduce('') { |acronym, word| acronym << word[0] }.upcase
  end
end
