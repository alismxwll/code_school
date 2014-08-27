class Section < ActiveRecord::Base
  validates :name, presence: true
  validates :section_number, presence: true

  has_many :lessons
end
