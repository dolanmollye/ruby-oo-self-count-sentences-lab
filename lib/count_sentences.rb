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
    sentence_amount = self.split(/[.?!]/).reject(&:empty?)
  return sentence_amount.count
  end
  binding.pry
end