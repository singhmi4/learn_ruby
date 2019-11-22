class Book
# write your code here
  
#   Allows the title to be read outside of the object
  def title
   @title
  end

#   Defines a new title outside of the object
  def title=(new_title)
    words = new_title.split(" ").map do |word|
        # don't capitalize words that start with 
        if %w(if in and an a or of the).include?(word)
            word
        else
        # capitalize every other word
            word.capitalize
        end
    end

    # ensure first word is capitalized
    words[0].capitalize!

    # join the words into a string array with space in between words
      @title = words.join(" ")
  end
  
end
