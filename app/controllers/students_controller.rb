class StudentsController < ApplicationController

    before_action :find_student, only: [:show, :edit, :update]

    def index
        @students = Student.all
    end

    def show
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.new
        @student.first_name = params[:student][:first_name]
        @student.last_name = params[:student][:last_name]
        @student.save
        redirect_to student_path(@student)
    end

    def edit
    end

    def update
        @student.update(set_params)
        redirect_to student_path(@student)
    end

    private

    def set_params
        params.require(:student).permit(:first_name, :last_name)
    end

    def find_student
        @student = Student.find(params[:id])
    end
end