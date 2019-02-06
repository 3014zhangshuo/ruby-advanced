class User
end

# instance method
User.class_eval do
  def hello
    'hello'
  end

  def self.nihao
    'nihao'
  end
end

# class method, singleton method
User.instance_eval do
  def hi
    'hi'
  end
end

puts User.hi
puts User.new.hello
puts User.nihao

a = 'hello'
a.instance_eval do
  def to_wonder
    self.replace('wonder')
  end
end

puts a.to_wonder

b = 'world'

# b.to_wonder # => error
