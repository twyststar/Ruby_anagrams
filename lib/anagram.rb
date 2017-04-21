class String
  define_method(:anagram?) do |word|
    word1 = self
    word1 = word1.downcase().split("").to_a
    word2 = word.downcase().split("").permutation(word1.length).to_a
    if word2.include?(word1)
      "That's an anagram."
    else
      "Not an anagram."
    end
  end
end
