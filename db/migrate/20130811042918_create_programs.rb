class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :program_name
      t.boolean :free
      t.string :age_group

      t.timestamps
    end
  end
end
