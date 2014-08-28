class LessonsController < ApplicationController
  def index
    @lessons = Lesson.unscoped.order(lesson_number: :asc)
    render('lessons/index.html.erb')
  end

  def show
    @lesson = Lesson.unscoped.find(params[:id])
    render('lessons/show.html.erb')
  end

  def new
    @sections = Section.all
    @lesson = Lesson.new
    render('lessons/new.html.erb')
  end

  def create
    @lesson = Lesson.create(params[:lesson])
    if @lesson.save
      flash[:notice] = "Your lesson has been added."
      redirect_to("/lessons/#{@lesson.id}")
    else
      render('lessons/new.html.erb')
    end
  end

  def edit
    @sections = Section.all
    @lesson = Lesson.unscoped.find(params[:id])
    render('lessons/edit.html.erb')
  end

  def update
    @lesson = Lesson.unscoped.find(params[:id])
    if @lesson.update(params[:lesson])
      flash[:notice] = "Your lesson has been updated."
      redirect_to("/lessons/#{@lesson.id}")
    else
      render('lessons/edit.html.erb')
    end
  end

  def destroy
    @lesson = Lesson.unscoped.find(params[:id])
    @lesson.destroy
    flash[:notice] = "Your lesson has been deleted."
    redirect_to("/sections")
  end
end
