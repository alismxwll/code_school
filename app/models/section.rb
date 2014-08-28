class Section < ActiveRecord::Base
  has_many :lessons
  validates :name, presence: true
  validates :section_number, presence: true
end
