p Array.ancestors # => [Array, Enumerable, Object, Kernel, BasicObject]
p Enumerable.class # => Module
p Module.class # => Class

module Management
  def company_notifies
    'company_notifies from Management'
  end
end

module Track
  def company_notifies
    'company_notifies from Track'
  end
end

class User
  include Management # 继承于这个模块
  include Track
  def company_notifies
    puts super
    'company_notifies from User'
  end
end

puts "User ancestors: #{User.ancestors}"
user = User.new
puts user.company_notifies
