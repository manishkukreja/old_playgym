class RemoveColumnAgeGroupFromPrograms < ActiveRecord::Migration
  def up
  	remove_column :programs,:age_group
  end

  def down
  end
end
