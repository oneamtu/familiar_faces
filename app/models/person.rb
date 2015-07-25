class Person < ActiveRecord::Base
  def to_s
    name
  end

  def name
    "#{first_name} #{last_name}"
  end
end
