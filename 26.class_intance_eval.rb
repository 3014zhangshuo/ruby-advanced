class User
end

User.class_eval do
  def hello
    'hello'
  end

  # works same as instance_eval
  def self.nihao
    'nihao'
  end
end

puts User.new.hello
puts User.nihao
