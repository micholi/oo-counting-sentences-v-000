require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
  #self.split(/[.!?]/).map {|string| delete!.string(&:empty?)}.size
  self.split(/[.!?]/).reject {|string| string.nil? || string == " "}.size
  binding.pry
  end
end
