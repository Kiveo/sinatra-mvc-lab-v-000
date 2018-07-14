class PigLatinizer
  attr_reader :text

  def initialize
    # @text = text
  end

  def piglatinize(text)
    @text = text
    #split text into an array of words
    words = @text.split(" ")
    #collect pig latin versions of words
    pig_words = split_words.map do |word|
      if word.slice(0,1) =~ (/AEIOUaeiou/)
        word = word + "way"
      else 
    #put pig words together as spaced text    
    pig_words.join(" ")
  end
  
end
