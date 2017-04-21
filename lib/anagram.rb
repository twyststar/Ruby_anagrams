class String
  define_method(:anagram?) do |word|
    word1 = self.split("").to_a
    word2 = word.split("").permutation(word1.length).to_a
    if word2.include?(word1)
      "That's an anagram."
    else
      "Not an anagram."
    end
  end
end
