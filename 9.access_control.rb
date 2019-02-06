class User
  @@counter = 0

  attr_accessor :name, :age
  def initialize name, age
    @name = name
    @age = age
    @@counter += 1
  end

  public
  def say_hi
    puts "hi #{@name}, i am #{age}"
  end

  protected
  def say_hello
    puts "hello, i am #{@name}"
  end

  private
  def say_hey
    puts "hey, i am #{@name}"
  end

  protected :say_hello
end

user = User.new('zhangs', 18)
user.say_hi
user.say_hello
user.say_hey
