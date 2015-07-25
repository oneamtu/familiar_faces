class TagRecord < ActiveRecord::Base
  belongs_to :person
  belongs_to :tag
end
