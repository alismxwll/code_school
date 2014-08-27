class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
    render('lessons/index.html.erb')
  end

  def show
    @lesson = Lesson.find(params[:id])
    render('lessons/show.html.erb')
  end

  def new
    @lesson = Lesson.new
    render('lessons/new.html.erb')
  end

  def create
    @lesson = Lesson.new(params[:lesson])
    @lesson.save ? redirect_to("/lessons/#{@lesson.id}") : render('lessons/new.html.erb')
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
