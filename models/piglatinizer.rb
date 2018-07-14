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
      #find first vowel as an index of the array ([word] per iteration)
      word.index("#{word.scan(/AEIOUaeiou/).first}") #first scanned vowel's index
      #
    end
    #put pig words together as spaced text
    pig_words.join(" ")
  end

end
