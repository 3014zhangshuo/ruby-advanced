# string
a = 'hello'
a.freeze
#a[0] = "h" # => will raise error

a = 'hi' # => ok, re-assign value

b = 'hooll'
b.sub('o', 'A') # => "hAoll"
b.gsub('o', 'A') # => "hAAll"

# variable refer
c = 'hello world'
d = c # 把c内存的引用地址赋给d
puts d
d[0] ='A'
puts c # => 'Aello world'

c = 'hello world'
d = c.dup
puts d
d[0] ='A'
puts c # => 'Aello world'

# array

arr = ['a', 'b', 1]
arr.clear
arr.find { |x| x == 'a' }
arr.map # arr.collect alias
arr.delete_if { |x| x == 'b' }
