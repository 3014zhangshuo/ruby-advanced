# 重新定义已存在方法，保留老方法的引用
def hello
  'hello'
end

alias old_hello hello
def hello
  'new hello'
end

puts old_hello
puts hello
