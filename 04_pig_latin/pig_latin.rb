#write your code here
def translateWord(word)
  # Scenario 1: Word begins with vowel [a,e,i,o,u]
  if word.match(/\A[aeiou]/)
    "#{word}ay"
  # Scenario 2: Word begins with "q"
  elsif word.match(/\A[q]/)
      "#{word[2,word.length-1]}quay"
  # Scenario 3: Word begins with consonant that isn't q (phenome)
  else
    consonants = []
    # Store consanant in new array
    consonants << word[0]
    # Remove first letter of word
    word = word[1,word.length-1]
    # Scenario 3.1: Second letter is q
    if word.match(/\A[q]/)
      consonants << "qu"
      # removes the qu from beginning of word
      word = word[2,word.length-1]
    # Scenario 3.2: Second letter begins with consonant
    elsif word.match(/\A[^aeiou]/)
      consonants << word[0]
      word = word[1,word.length-1]
      # Scenario 3.2.2: Second letter begins with consonant
      if word.match(/\A[^aeiou]/)
        consonants << word[0]
        word = word[1,word.length-1]
      end
    end
  # Join consonants array
  consonants_join = consonants.join
  # Build new word with consonants added to end with ay
  "#{word}#{consonants_join}ay"
  end
end

def translate(phrase)
  # split phrase into array
  phrase_array = phrase.split(" ")
  # run the translate_word function on each word in array
  piglatin_array = phrase_array.map{ |word| translateWord(word)}

  # join the piglatin array with a space
  "#{piglatin_array.join(" ")}"
end
