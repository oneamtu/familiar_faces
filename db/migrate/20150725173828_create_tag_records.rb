class CreateTagRecords < ActiveRecord::Migration
  def change
    create_table :tag_records do |t|
      t.belongs_to :tags
      t.belongs_to :people

      t.timestamps
    end
  end
end
