class Api::MoviesController < ApplicationController
  # before_action :authenticate_admin, except: [:index, :show]

  def index
    @movies = Movie.where(english: true)
    render "index.json.jb"
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @movie = Movie.create(
      title: params[:title],
      year: params[:year],
      director: params[:director],
      plot: params[:plot],
      english: params[:english],
    )
    if @movie.save
      render "show.json.jb"
    else
      render json: {errors: @movie.errors.full_messges}
    end
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.director = params[:director] || @movie.director
    @movie.plot = params[:plot] || @movie.plot
    @movie.english = params[:english] || @movie.english
    if @movie.save
     render "show.json.jb"
    else
      render json: {errors: @movie.errors.full_messges}
    end
  end

  def delete
    @movie = Movie.find_by(id: params[:id])
    @movie.destroy
    render json: {message: "Successfully deleted!"}
  end

end
