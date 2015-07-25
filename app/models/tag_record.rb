class TagRecord < ActiveRecord::Base
  belongs_to :person
  belongs_to :tag

  def to_s
    "#{person} - #{tag}"
  end
end
