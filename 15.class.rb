class User
  def panels
    @panels ||= ['Profile', 'Products']
  end
end

class Admin < User
end

puts "Admin class ancestors: #{Admin.ancestors}"
admin = Admin.new
p admin.panels
