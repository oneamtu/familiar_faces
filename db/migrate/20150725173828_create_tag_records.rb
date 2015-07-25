class CreateTagRecords < ActiveRecord::Migration
  def change
    create_table :tag_records do |t|
      t.belongs_to :tag
      t.belongs_to :person

      t.timestamps
    end
  end
end
