class SchoolClassesController < ApplicationController
    before_action :find, only: [:show, :edit, :update]
    
    def index
        @schoolclasses = SchoolClass.all 
    end

    def show
        # @schoolclass = SchoolClass.find(params[:id])
    end

    def new
        @schoolclass = SchoolClass.new
    end

    def create
        @schoolclass = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))
        redirect_to school_class_path(@schoolclass)
    end

    def edit
    end

    def update
        @schoolclass.update(params.require(:school_class).permit(:title, :room_number))
        redirect_to school_class_path(@schoolclass)
    end

    private

    def find
        @schoolclass = SchoolClass.find(params[:id])
    end
end
