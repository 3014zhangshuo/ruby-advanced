# r 读 w 写 a+ 追加

# File Read
file = File.open('run.log', 'r')
while line = file.gets
  puts line
end

# File Write
file = File.open('run.log', 'a+')
file.puts "hello"
file.close

# needn't close
File.open('run.log', 'a+') do |f|
  f.puts "hello"
end
