class CreateChangeToInteger < ActiveRecord::Migration
  def change
    remove_column :lessons, :lesson_number

    add_column :lessons, :lesson_number, :integer
  end
end
