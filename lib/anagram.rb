class String
  define_method(:anagram?) do |word|
    word1 = self
    word1 = word1.downcase().split("")
    word2 = word.downcase().split("")
    if word2.sort() == word1.sort()
      "That's an anagram."
    else
      "Not an anagram."
    end
  end
end
