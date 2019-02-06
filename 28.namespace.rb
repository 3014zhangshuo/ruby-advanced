module Management
  COMPANY_NAME = "343 Code Academy"

  module Track
    def track
      'track from Track module'
    end
  end

  class User
    def hello
      'hello from User class'
    end
  end
end

puts Management::COMPANY_NAME

include Management::Track
puts track

user = Management::User.new
puts user.hello
