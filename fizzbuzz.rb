class Object
  def if_true
    yield
    self
  end
  
  def if_false
    self
  end
end

class FalseClass
  def if_true
    self
  end

  def if_false
    yield
    self
  end
end

class NilClass
  def if_true
    self
  end

  def if_false
    yield
    self
  end
end

(1..100).each do |number|
  word = ""
  (number % 3 == 0).if_true { word += "Fizz" }
  (number % 5 == 0).if_true { word += "Buzz" }

  (word.empty?).
    if_true { puts number }.
    if_false { puts word }
end
