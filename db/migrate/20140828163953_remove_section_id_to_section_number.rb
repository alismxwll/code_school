class RemoveSectionIdToSectionNumber < ActiveRecord::Migration
  def change
    remove_column :lessons, :section_id

    add_column :lessons, :section_number, :integer
  end
end
