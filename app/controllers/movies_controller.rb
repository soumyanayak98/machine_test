class MoviesController < ApplicationController
    def index
        @movies = Movie.all
    end

    def new
        @movie = Movie.new
    end

    def create
        @movie = Movie.create(movies_params)
        if @movie.save
            redirect_to movies_path
        else
            render "new"
        end
    end

    def edit
        movie
    end

    def update
        movie.update(movies_params)
        if @movie.save
            redirect_to movies_path
        else
            render "edit"
        end
    end

    def destroy
    end

    private

    def movies_params
        params.require(:movie).permit(:name, :genre, :format, :a_u)
    end

    def movie
        @movie = Movie.find(params[:id])
    end

end
