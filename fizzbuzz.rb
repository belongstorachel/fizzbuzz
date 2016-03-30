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

(1..100).each do |i|
  number = ""
  (i % 3 == 0).if_true { number += "Fizz" }
  (i % 5 == 0).if_true { number += "Buzz" }

  (number.empty?).
    if_true { puts i }.
    if_false { puts number }
end
