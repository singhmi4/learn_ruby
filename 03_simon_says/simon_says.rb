#write your code here
def echo word
  return word
end

def shout word
    return word.upcase
end

def repeat(word, times = 2)
    wordWithSpace = "#{word} "
    repeatedWord = wordWithSpace * times
    return repeatedWord.delete_suffix(" ")
end

def start_of_word(word, times = 1)
  return word[0,times] 
end

def first_word word
  return word.partition(" ").first
end

def titleize title
    words = title.split.map do |word|
      #%w(foo bar) is the same as making an array called ["foo", "bar"]
      if %w(the and over).include?(word)
        word
      else
        word.capitalize
      end
    end

    # "!" overwrites the word variable instead of having to create a new variable
    words.first.capitalize!

    #Join the string with " "
    words.join(" ")
    
end
    
