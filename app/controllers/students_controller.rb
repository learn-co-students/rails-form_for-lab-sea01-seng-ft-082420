class StudentsController < ApplicationController
    before_action :find, only: [:show, :edit, :update]
    
    def index
        @students = Student.all 
    end

    def show
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.create(params.require(:student).permit(:first_name, :last_name))
        redirect_to student_path(@student)
    end

    def edit
    end

    def update
        @student.update(params.require(:student).permit(:first_name, :last_name))
        redirect_to student_path(@student)
    end

    private

    def find
        @student = Student.find(params[:id])
    end

end
        