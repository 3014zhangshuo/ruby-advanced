### Blocks
- block 是一个参数
- 匿名函数
- Callback
- 使用 do/end 或者 {} 来定义

### Ruby代码加载机制
- $LOAD_PATH
- 命名约束（以文件中的类或模块名命名）

### 什么是OOP
- 人
- 属性：attribute
- 行为：方法，method

### Instance Method & Instance Attribute
- Instance Method: 实例方法，成员方法，成员函数
- Instance Attribute: 实例变量，成员属性，属性(property)，使用@定义

### Class Method & Class Variable
- Class Method: 类方法，静态方法
- Class Variable: 类变量，使用`@@`定义

### Access Control
- public: 默认为公开的，实例的外部可以调用
- protected: 子类可以访问，实例的外部不可以调用
- private: 外部的实例和子类都不可以访问

### Inheritance 继承
- User -> Admin
- ruby没有多重继承
- `super`调用父类的同名方法
- `self` 当前作用域所指向的实例

### Modules 作用
- namespace
- mixin: 实现类似于多类继承的功能
- storage

### ancestors
- Array.ancestors

### Method Finding 方法查找
- 自上而下，自内而外

### Method Overwrite 方法覆盖
- class和module可以重新打开
- 方法可以重定义

### Module 本质上也是一个class
- Module.class # => Class

### include vs prepend
- include 把模块注入当前类的继承链后面
- prepend 把模块注入当前类的继承链前面

### included 方法
- 当模块被include时会被执行，同时会传递当前作用域的self对象

### Module Advanced
- class_eval & instance_eval
- method_missing
- Module as a namespace
- Gems
- require vs load
- $LOAD_PATH
#### class_eval
- 首先class_eval是只有类才能调用，Class#class_eval
- class_eval会重新打开当前类作用域
#### instance_eval
- instance_eval是所有类实例的方法
- 打开的是当前实例作用域
#### method_missing
- 当当前作用域上下文没有找到方法时就会调用`method_missing`方法
#### namespace
- Module
- Class
- Constants
- 使用::来访问
#### reuqire vs load
- 相同点
  - 都会在$LOAD_PATH下面查找当前要引入的文件
- 不同点
  - require调用文件时不需要".rb"的文件后缀，而load需要
  - require针对同样的文件是会调用一次，而load会反复调用
#### $LOAD_PATH
- Ruby代码的查找路径为当前的$LOAD_PATH环境变量
- Ruby文件名命名规则：文件的名字代表了当前class/module的名字
### Ruby Other
- Loop
- Expression
- File Read/Write
- Debug
- Process & Thread
#### Loop
- while
- until
- loop
- for
- 循环控制
  - break
  - next
#### File Read/Write
- File.read
- File.readlines (return array 一次性读取)
- File#rewind etc.
- IO.read/write
