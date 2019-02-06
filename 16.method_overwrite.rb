class User
  def panels
    @panels ||= ['Profile', 'Products']
  end
end

class User
  def panels
    'overwrite'
  end
end

user = User.new
puts "user panels: #{user.panels}"

class Array
  def to_hello_world
    "hello #{self.join(',')}"
  end
end

a = %w[cat horse dog]
puts a.to_hello_world
