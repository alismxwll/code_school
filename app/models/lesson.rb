class Lesson < ActiveRecord::Base
  validates :name, :presence => true
  validates :content, :presence => true
  validates :lesson_number, :presence => true

  before_save :to_integer
end
