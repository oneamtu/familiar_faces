class CreatePersonImages < ActiveRecord::Migration
  def change
    create_table :person_images do |t|
      t.belongs_to :person
      t.string :image

      t.timestamps
    end
  end
end
