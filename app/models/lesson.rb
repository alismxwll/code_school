class Lesson < ActiveRecord::Base
  belongs_to :section
  default_scope { where(published: true).order(lesson_number: :asc) }
  validates :published, :presence => true
  validates :name, :presence => true
  validates :content, :presence => true
  validates :lesson_number, :presence => true
  validates :section_number, :presence => true

  belongs_to :section

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
