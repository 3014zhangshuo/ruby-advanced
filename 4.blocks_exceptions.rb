# Blocks
# block 是一个参数
# 匿名函数
# Callback
# 使用 do/end 或者 {} 来定义

def hello
  puts 'hello method start'
  yield
  yield
  puts 'hello method end'
end

hello { puts 'i am in block' }

puts '-' * 30

def hello
  puts 'hello method start'
  yield('hello', 'world')
  puts 'hello method end'
end

hello { |x, y| puts "i am in block, #{x} #{y}" }

puts '-' * 30

def hello name
  puts 'hello method start'
  result = "hello " + name
  yield(result)
  puts 'hello method end'
end

hello('world') { |x| puts "i am in block, i got #{x}" }

puts '-' * 30

def hello name, &block
  puts 'hello method start'
  result = "hello " + name
  if block_given?
    block.call(result)
  end
  puts 'hello method end'
end

hello('world') { |x| puts "i am in block, i use call #{x}" }

puts '-' * 30

%w[cat dog frog].each do |animal|
  puts animal
end

puts '-' * 30

%w[cat dog frog].each { |animal| puts animal }

puts '-' * 30

# start index 0
10.times do |t|
  puts t
end

puts '-' * 30

('a'..'d').each { |char| puts char }

puts '-' * 30

# variable scope
# before 2.0
x = 1
[1,2,3].each { |x| puts x }
puts x # => x will be 3, which is incorrect

puts '-' * 30

# block 可以读取和修改到外部变量，block的局部变量外部是访问不到的
x = 1
[1,2,3].each { |y| x = y }
puts x # => x will be 3, which is incorrect
# puts '-' * 10
# sum = 0
# [1,2,3].each { |z| sum += z }
# puts sum
# puts z # => z is invalid

puts '-' * 30

class Array
  def find
    each do |value|
      return value if yield(value)
    end # => return Array
    nil
  end
end

p [1,2,3].find { |x| x == 2 }
p [1,4,3].find { |x| x == 2 }

# 声明 block 多用于方法内部需要传递block
def hello name, &block
  p "hello #{name}, from method"
  block.call(name)
  #hi(block)
end

hello('343') { |x| puts "hello #{x} from block"}

# block can be closure, block 作用域 -> 绑定上下文作用域
p '-' * 30
def counter
  sum = 0
  proc { |x| x = 1 unless x; sum += x }
end

c2 = counter
p c2.call(1)
p c2.call(2)
p c2.call(3)

# new method to create block

# name is required
hello = -> (name) { "hello #{name}" }
p hello.call('new block')
#p hello.call() #=> ArgumentError

# name is required
hello2 = lambda { |name| "hello #{name}" }
p hello2.call('lambda')

hello3 = proc { |name| "hello #{name}" }
p hello3.call('old block')
p hello3.call

# Exception
# StandardError
# SyntaxError
# RuntimeError
# ArgumentError
# NameError
# etc.

def nameerror name
  raise name
end

# nameerror # => ArgumentError

# nameerror('zhangshuo') # => RuntimeError

def hi
  raise
end

begin
  hi
rescue RuntimeError
  puts 'got it'
end

# exception catch
begin
  hi
rescue => e
  puts "catch exception with name: #{e.class}"
else
  p 'else'
ensure
  p 'ensure'
end

# 变量赋值
x = [1,2,3]
a, b = x
puts a #=> 1
puts b #=> 2

x = [1,2,3]
a, *b = x
puts a #=> 1
p b #=> [2,3]

a = %Q{
  hello
  #{b}
}

b = <<-HERE
hello world
#{a}
HERE

puts b
