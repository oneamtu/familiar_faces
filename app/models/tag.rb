class Tag < ActiveRecord::Base
  has_many :tag_records
  has_many :people, through: :tag_records

  def to_s
    name
  end
end
