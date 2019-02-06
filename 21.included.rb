module Management
  def self.included base
    puts "Management is being included into #{base}" 

    base.include InstanceMethods
    base.extend ClassMethods
  end

  module InstanceMethods
    def company_notifies
      'company_notifies from Management'
    end
  end

  module ClassMethods
    def progress
      'progress'
    end
  end
end

class User
  include Management
end

p User.ancestors

user = User.new
puts user.company_notifies
puts User.progress
