class User
  attr_accessor :name

  def initialize name
    @name = name
  end

  def panels
    # 缓存 不重复赋值
    @panels ||= ['Profile', 'Products']
  end
end

class Admin < User
  def panels
    super
    @panels.concat(['Manage Users'])
  end
end

user = User.new('customer')
p user.panels

admin = Admin.new('admin')
p admin.panels
