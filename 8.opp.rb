# oop everything is object
string = 'hello' # = String.new('hello')
string.class # => String

float = 3.14
float.class # => Float

arr = %w[a b c]
arr.class # => Array

class User
  @@counter = 0

  def initialize name, age
    @name = name
    @age = age
    @@counter += 1
  end

  # getter same as attr_reader :name, :age
  def name
    @name
  end

  def age
    @age
  end

  # setter same as attr_writer :name, :age

  def name=(name)
    @name = name
  end

  def age=(age)
    @age = age
  end

  # attr_accessor getter setter

  # @name 读取 intance variable，age调用方法
  def say_hi
    puts "hello #{@name}, i am #{age}"
  end

  # def User.get_counter
  def self.get_counter
    @@counter
    # 访问不到 @name @age 作用域为类作用域
  end
end

puts User.get_counter # => 0
user = User.new('zhangshuo', 18)
puts user.name
puts user.age
user.age = 20
puts user.age

puts User.get_counter # => 1
user = User.new('zhangshuo', 18)
puts User.get_counter # => 2
