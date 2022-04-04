class Word

  def initialize(name,description)
    @name = name
    @description = description
  end

  def word
    @name
  end

  def meaning
    @description
  end

end


class Dictionary
  def initialize(arr)
    @arr = arr
  end

  def find_meaning(word)
    description = @arr.find {|w| w.word == word }
    description = description.meaning unless @arr.nil?
    description
  end

end

apple = Word.new('apple', 'A fruit')

p apple.word == 'apple' # => true

p apple.meaning == 'A fruit' # => true

car = Word.new('car', 'A transport')

dictionary = Dictionary.new([apple, car])

p dictionary.find_meaning('apple') == 'A fruit' # => true

p dictionary.find_meaning('car') == 'A transport' # => true


