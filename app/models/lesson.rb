class Lesson < ActiveRecord::Base
  validates :name, :presence => true
  validates :content, :presence => true
  validates :lesson_number, :presence => true

  before_save :to_integer

private
  def to_integer
    self.lesson_number = self.lesson_number.to_i
  end
end
