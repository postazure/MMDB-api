class MoviesController < ApplicationController
  def all
    @movies = Movie.all
    render json: @movies
  end
  def search
    @movies = (params["y"] ? Movie.where(year: params["y"]) : Movie.all)
    @movies = @movies.map { |movie| movie if movie.title.downcase.include?(params["t"].downcase)  } if params["t"]
    @movies.delete_if {|movie| !movie}
    render json: @movies
  end
end
