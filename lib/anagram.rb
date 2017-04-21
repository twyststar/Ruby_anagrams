class String
  define_method(:anagram?) do |word|
    word1 = self
    word1 = word1.downcase().split("")
    word2 = word.downcase().split("")
    vowels = ['a', 'e', 'i', 'o', 'u']
    if (word1 & vowels).empty?() == true || (word2 & vowels).empty?()
      "Please enter a valid word."
    else
      if word1.length != word2.length
        "Not an anagram."
      elsif word2.sort() == word1.sort()
        "That's an anagram."
      else
        "Not an anagram."
      end
    end
  end
end
