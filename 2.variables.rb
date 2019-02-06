# 变量赋值 内存中的引用地址，内存中的存储地址
a = 'hello'
p a.object_id

a.replace('hi') # 仅替换储存内容，本身的内存地址并没有被修改
p a.object_id

a = 'hello' # 重新开辟内存
p a.object_id

a = {"a": 1, "b": 2} # => { :a => 1, :b =>1}
# key always symbol

a = {"a" => 1, "b" => 2} # => { "a" => 1, "b" =>1 }
# 2.0之前 指定key

# 反引号运行Shell命令
p `ls`

a = 1
a + 2 # 这里 + 只是一个方法， 2是传递的方法参数

# Hash是无序的，array是有序的
