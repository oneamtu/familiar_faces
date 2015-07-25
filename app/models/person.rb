class Person < ActiveRecord::Base
  has_many :person_images, dependent: :destroy

  def to_s
    name
  end

  def to_s_with_relationship
    relationship_description ? "#{to_s} (#{relationship_description})" : to_s
  end

  def name
    "#{first_name} #{last_name}"
  end

  def image_path
    image_paths.first
  end

  def thumb_path
    person_images.first.image.thumb.url
  end

  def image_paths
    person_images.map { |i| i.image.url }.flatten
  end
end
