module Management
  # self 代表当前作用域，绑定 Management include 到 User后
  # self 依旧为 Management
  def self.track
    'track'
  end
end

class User
  include Management
end

# User.track # => error
Management.track
