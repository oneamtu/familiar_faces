class Person < ActiveRecord::Base
  has_many :person_images

  def to_s
    name
  end

  def name
    "#{first_name} #{last_name}"
  end

  def image_path
    image_paths.first
  end

  def image_paths
    person_images.map { |i| i.image.current_path }.flatten
  end
end
