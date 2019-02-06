# boolean clause
# && || !
# and or not

puts (true and true)
puts (true and false)
puts (true or false)
puts (not true)

a = (false and false || true) # and or 优先级弱于 || && 代码先执行后边的 ||
b = (false and false or true)
puts a
puts b

a = nil
b = a || 4
puts b # => 4
c = b && 5
puts c # => 5

d = nil
e = d or 4
puts e # => will be nil，or的优先级是低于=，所以先执行 b = a，再执行or 4.

f = e && 5
puts f # = will be nil
