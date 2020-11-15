require 'pry'

class String

  def sentence?
    last_char =  self[self.length - 1]
    last_char == "."
  end

  def question?
    last_char =  self[self.length - 1]
    last_char == "?"
  end

  def exclamation?
    last_char =  self[self.length - 1]
    last_char == "!"
  end

  def count_sentences
    string = self
    array_split = string.split(/[!?.]/)
    array_split.map {|element| array_split.delete(element) if element.length < 2}
    return array_split.length 
  end
end