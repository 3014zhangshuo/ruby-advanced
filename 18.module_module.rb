module Management
  def company_notifies
    'company_notifies from Management'
  end
end

module Track
  include Management

  def company_notifies
    puts super
    'company_notifies from Track'
  end
end

p Track.ancestors

include Track

puts company_notifies
