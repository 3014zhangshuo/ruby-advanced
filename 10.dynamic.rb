# User 内幕
# attr_accessor方法从哪里来的 ？
# 来自于继承的 Class 类，自定义的类都是 Class类的 instance

# Class.attr_accessor
# define_method
define_method :hello do
  puts 'hello world'
end

class User
  def self.setup_accessor var
    define_method var do
      instance_variable_get "@#{var}"
    end

    define_method "#{var}=" do |value|
      instance_variable_set "@#{var}", value
    end
  end

  setup_accessor :name
  setup_accessor :age

  def initialize name, age
    @name = name
    @age = age
  end
end

user = User.new('zhangshuo', 18)
puts user.name


class User
  def self.setup_accessor *vars
    vars.each do |var|
      define_method var do
        instance_variable_get "@#{var}"
      end

      define_method "#{var}=" do |value|
        instance_variable_set "@#{var}", value
      end
    end
  end

  setup_accessor :name, :age

  def initialize name, age
    @name = name
    @age = age
  end
end

user = User.new('zhangshuo', 18)
puts user.name
