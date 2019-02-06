# class_eval
# 首先class_eval是只有类才能调用，Class#class_eval
# class_eval会重新打开当前类作用域

class User
end

# class User 作用相同
User.class_eval do
  attr_accessor :name

  def hello
    'hello'
  end
end

user = User.new
user.name = 'zhangshuo'
puts user.name
puts user.hello
