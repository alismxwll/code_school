class SectionsController < ApplicationController
  def index
    @lessons = Lesson.all
    @sections = Section.all
  end

  def new
    @section = Section.new
    render('sections/new.html.erb')
  end

  def create
    @section = Section.create(params[:section])
    if @section.save
      flash[:notice] = "Your section has been added."
      redirect_to("/sections/#{@section.id}")
    else
      render('sections/new.html.erb')
    end
  end

  def show
    @section = Section.find(params[:id])
    render('sections/show.html.erb')
  end

  def edit
    @section = Section.find(params[:id])
    render('sections/edit.html.erb')
  end

  def update
    @section = Section.find(params[:id])
    if @section.update(params[:section])
      flash[:notice] = "Your section has been updated."
      redirect_to("/sections/#{@section.id}")
    else
      render('sections/edit.html.erb')
    end
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    flash[:notice] = "Your section has been deleted."
    redirect_to("/sections")
  end
end
