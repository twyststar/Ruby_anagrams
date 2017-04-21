
class String
  define_method(:anagram?) do |word|
    word1 = self.prep_words()
    word2 = word.prep_words()
    vowels = ['a', 'e', 'i', 'o', 'u']
    both = word1 & word2
    if (word1 & vowels).empty?() || (word2 & vowels).empty?()
      "Please enter a valid word."
    elsif both.length == 0
      "Antigram! No letter is present in both words."
    else
      if word1.length != word2.length && both.length > 0
        "Not an anagram, but the letters '" + both.join() + "' are present in both fields."
      elsif word2.sort() == word1.sort()
        "That's an anagram."
      else
        "Not an anagram."
      end
    end
  end
end

class String
  define_method(:palindrome?) do
    word = self
    word.gsub!(/\s+/, '')
    word.downcase!()
    if word == word.reverse()
      "is a palindrome."
    else
      "is not a palindrome."
    end
  end
end


class String
  define_method(:prep_words) do
    word1 = self
    word1 = word1.downcase().gsub(/[\W\d]/, '').split("").reject{ |e|  e == " " }
  end
end

class String
  define_method(:kitty) do
    if (self == 'kitty') || (self =='cat') || (self =='meow') || (self =='purr')
     "Meow! "
    else
      " "
    end
  end
end
class String
  define_method(:hello) do
    if (self == 'hello') || (self == 'hi') || (self =='aloha')
     "Hello to you! "
    else
     " "
    end
  end
end
