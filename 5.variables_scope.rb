# constant 不建议修改常量
Name = '343'
Name = '343s' # => output warning

Name.replace '343_2' # => safe
puts Name

# instance variables class variables
class User
  attr_reader :name

  @@counter = 0

  def initialize name
    @name = name
    @@counter += 1
  end

  def get_counter
    @@counter
  end
end

user = User.new '343'
puts user.name
puts user.get_counter

# global variables

def hello
  puts $$ # => process id (pid)
  p $: # => ruby loading path
end

hello
