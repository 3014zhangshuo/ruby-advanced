# Block 类似于一个方法（匿名方法），可以使用do/end来定义，也可以用 {}
# open 接受第三个参数 函数（代码块）
# 代码块可以接受参数 |参数|
File.open('a.log', 'w+') do |f|
  f.puts 'line 1'
end

def hi name
  yield(name)
end

#yield 为调用外部block的关键字 可以传递参数

hi('code') { |x| "hello #{x}"}

hi = proc { |x| "hello #{x}" }
p hi.call('world')

# 等同于
hi = Proc.new { |x| "hello #{x}" }
p hi.call('world')

# proc相当于定义一个方法变量，可以把方法当做参数传递
# ruby的方法不需要加（）就可以调用，不可把方法名当做参数传递
# java/javascript 方法不加（）时只是一个方法的引用，可以把方法名当做参数传递

# lambda

hi = lambda { |x| "hello #{x}" }
hi.call('world')
