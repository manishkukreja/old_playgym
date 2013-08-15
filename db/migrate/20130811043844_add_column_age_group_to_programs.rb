class AddColumnAgeGroupToPrograms < ActiveRecord::Migration
  def change
    add_column :programs, :age_group, :integer
  end
end
