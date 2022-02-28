class ShowTimesController < ApplicationController
    def index
        @show_times = ShowTime.all
    end

    def show
    end

    def new
        @show_time = ShowTime.new
    end

    def create
        @show_time = ShowTime.create(show_times_params)
        if @show_time.save
            redirect_to show_times_path
        else
            render "new"
        end
    end

    def edit
        show_time
    end

    def update
        show_time.update(show_times_params)
        if show_time.save
            redirect_to show_times_path
        else
            render "edit"
        end
    end

    def destroy
    end

    private

    def show_times_params
        params.require(:show_time).permit(:movie_id, :date, :timing, :theater_id)
    end

    def show_time
        @show_time = ShowTime.find(params[:id])
    end
end
