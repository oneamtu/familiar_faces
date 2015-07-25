class Person < ActiveRecord::Base
  def to_s
    name
  end

  def name
    "#{first_name} #{last_name}"
  end

  def image_path
    "person_image_placeholder.png"
  end
end
