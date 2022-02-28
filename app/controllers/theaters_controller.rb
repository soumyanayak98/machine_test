class TheatersController < ApplicationController
    def index
        @theaters = Theater.all
    end

    def show
        theater
        @show_times = theater.show_times
    end

    def new
        @theater = Theater.new
    end

    def create
        @theater = Theater.create(theaters_params)
        if @theater.save
            redirect_to theaters_path
        else
            render "new"
        end
    end

    def edit
        theater
    end

    def update
        theater.update(theaters_params)
        if @theater.save
            redirect_to theaters_path
        else
            render "edit"
        end
    end

    def destroy
    end

    def theaters_params
        params.require(:theater).permit(:name, :city_name, :seats)
    end

    def theater
        @theater = Theater.find(params[:id])
    end
end
