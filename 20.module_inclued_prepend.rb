module Management
  def company_notifies
    'company_notifies from Management'
  end
end

class User
  include Management
  #prepend Management
  
  def company_notifies
    'company_notifies from User'
  end
end

p User.ancestors

user = User.new
puts user.company_notifies
