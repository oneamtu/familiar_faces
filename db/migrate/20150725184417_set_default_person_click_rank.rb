class SetDefaultPersonClickRank < ActiveRecord::Migration
  def up
    change_column :people, :click_rank, :integer, default: 0
    Person.where(click_rank: nil).update_all(click_rank: 0)
  end

  def down
    change_column :people, :click_rank, :integer, default: nil
    Person.where(click_rank: 0).update_all(click_rank: nil)
  end
end
