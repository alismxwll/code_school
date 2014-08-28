class AddColumnPublished < ActiveRecord::Migration
  def change
    add_column :lessons, :published, :boolean
  end
end
