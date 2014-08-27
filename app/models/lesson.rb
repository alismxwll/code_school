class Lesson < ActiveRecord::Base
  validates :name, :presence => true
  validates :content, :presence => true
  validates :lesson_number, :presence => true

  def next
    next_number = self.lesson_number + 1
    next_lesson = Lesson.find_by(:lesson_number => next_number)
    next_lesson
  end

  def previous
    previous_number = self.lesson_number - 1
    previous_lesson = Lesson.find_by(:lesson_number => previous_number)
    previous_lesson
  end
end
