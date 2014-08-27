class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :content
      t.decimal :lesson_number
    end
  end
end
