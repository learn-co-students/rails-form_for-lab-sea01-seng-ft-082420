class StudentsController < ApplicationController
    def index
        #byebug
        @students = Student.all
    end

    def show
        #byebug
        @student = Student.find(params[:id])
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.new(params.require(:student).permit(:first_name, :last_name))
        @student.save
        redirect_to(@student)
    end

    def update
        @student = Student.find(params[:id])
        @student.update(params.require(:student).permit(:first_name, :last_name))
        redirect_to(@student)
    end

    def edit
        @student = Student.find(params[:id])
        @students = Student.all
    end


end