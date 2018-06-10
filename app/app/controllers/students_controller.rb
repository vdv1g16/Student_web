class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      log_in @student
      flash[:notice] = "New student is successfully created!"
      redirect_to @student
    else
      render 'new'
    end    
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      redirect_to @student
      flash[:notice] = "Student was successfully updated."
    else
      render 'edit'
    end
  end

  def destroy
    @student.destroy
    redirect_to students_url
    flash[:notice] = 'Student was successfully destroyed.'
  end

  private
    def set_student
      @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:name, :email, :school, :course, :password, :password_confirmation, :avatar)
    end

end

