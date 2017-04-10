class StudentsController < ApplicationController
  def index
    @students = Student.all
    render 'index.html'
  end
  def show
    #will refer to students/:id implicitly defined as show
    @student = Student.new
    @student.first_name = "Daenerys"
    @student.last_name = "Targaryen"
    @student.save
    render 'show.html'
  end
end
