class Section < ActiveRecord::Base
  validates :name, presence: true
  validates :section_number, presence: true
end
