class SchoolClassesController < ApplicationController

    before_action :find_class, only: [:show, :edit, :update]

    def index
        @school_classes = SchoolClass.all
    end

    def show
    end

    def new
        @school_class = SchoolClass.new
    end

    def create
        @school_class = SchoolClass.create(class_params)
        # @school_class = SchoolClass.new
        # @school_class.title = params[:school_class][:title]
        # @school_class.room_number = params[:school_class][:room_number]
        # @school_class.save
        redirect_to school_class_path(@school_class)
    end

    def edit
    end

    def update
        @school_class.update(class_params)
        redirect_to school_class_path(@school_class)
    end

    private

    def class_params
        params.require(:school_class).permit(:title, :room_number)
    end

    def class_room_params
         params.require(:school_class).permit(:room_number)
    end

    def find_class
        @school_class = SchoolClass.find(params[:id])
    end
end