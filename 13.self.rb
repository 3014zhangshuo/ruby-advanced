# self this
class User
  attr_accessor :name

  def initialize name
    @name = name
  end

  def panels
    @panels ||= ['Profile', 'Products']
  end

  def to_s
    "#{self.name}"
    # "#{name}" 实例的内部 在to_s
  end

  # singleton method
  def self.category
    'User'
  end
end


user = User.new('zhangshuo')
puts user # 当前实例有to_s方法 自动调用to_s方法
puts User.class
puts User.category
