module Management
  def self.progress
    'progress'
  end

  # you need to include/extend/prepend to use this method
  def company_notifies
    'company_notifies from Management'
  end
end

puts Management.progress
