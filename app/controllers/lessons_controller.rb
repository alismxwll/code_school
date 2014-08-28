class LessonsController < ApplicationController
  def index
    section = Section.find(params[:section_id])
    @lessons = section.lessons.new
    render('lessons/index.html.erb')
  end

  def show
    @lesson = Lesson.find(params[:id])
    render('lessons/show.html.erb')
  end

  def new
    section = Section.find(params[:section_id])
    @lesson = section.lessons.new
    render('lessons/new.html.erb')
  end

  def create
    section = Section.find(params[:section_id])
    @lesson = section.lessons.new(params[:lesson])
    @lesson.save ? redirect_to("/sections/#{@lesson.section_id}/lessons/#{@lesson.id}") : render('lessons/new.html.erb')
  end

  def edit
    @lesson = Lesson.find(params[:id])
    render('lessons/edit.html.erb')
  end

  def update
    @lesson = Lesson.find(params[:id])
    @lesson.update(params[:lesson]) ? redirect_to("/lessons/#{@lesson.id}") : render('lessons/edit.html.erb')
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to("/lessons")
  end
end
