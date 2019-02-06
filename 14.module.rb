module Management
  def company_notifies
    'company_notifies'
  end
end

module CompanyFeatrue
  def new_record
    'new_record'
  end
end

class User
  attr_accessor :name

  def initialize name
    @name = name
  end

  def panels
    @panels ||= ['Profile', 'Products']
  end
end

class Admin < User
  include Management
  extend CompanyFeatrue

  def panels
    super
    @panels << 'Manage Users'
  end
end

class Staff < User
  include Management
  extend CompanyFeatrue

  def panels
    super
    @panels << 'Tasks'
  end
end

admin = Admin.new('admin')
puts admin.company_notifies

staff = Staff.new('staff')
puts staff.company_notifies

puts Admin.new_record
puts Staff.new_record
