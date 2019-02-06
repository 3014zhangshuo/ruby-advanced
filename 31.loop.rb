# while
a = 10
while a > 0
  puts a
  a -= 1
end

# until
b = 10
until b == 0
  puts b
  b -= 1
end

# loop
c = 10
loop do
  break if c <= 0
  puts c
  c -= 1
end

# break
for x in 1..10
  break if x == 5
  puts x
end

# next 跳出循环体执行下一次循环
for x in 1..10
  next if x == 6 # never puts 6
  puts x
end
