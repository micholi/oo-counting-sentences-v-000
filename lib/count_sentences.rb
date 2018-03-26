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
  #  self.split("."/"!"/"?").map {|element| element.count_sentences.compact}
  self.split(/[.!?]/).map {|string| string.delete_if(&:empty).count_sentences}
  #self.split(/[.!?]/).reject!(&:empty?).join.count_sentences
  end
end
