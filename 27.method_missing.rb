class User
  def hello
    'hello from User'
  end

  def method_missing(method_name, *args)
    "method name is #{method_name}, parameters: #{args}"
  end
end

user = User.new
puts user.hello
puts user.hi('zhangshuo', 18)
