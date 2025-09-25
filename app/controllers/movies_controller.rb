class MoviesController < ApplicationController
  before_action :set_movie, only: %i[show edit update destroy]

  def index
    @movies = Movie.all.order(params[:sort] || :title)
  end

  def show
  end

  def new
    @movie = Movie.new
  end

  def create
  # Try to find an existing movie with the same title (case-insensitive)
  @movie = Movie.find_by('lower(title) = ?', movie_params[:title].downcase.strip)

  if @movie
    redirect_to movies_path, alert: "Movie already exists!"
  else
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to @movie, notice: "Movie was successfully created."
    else
      render :new
    end
  end
end


  def edit
  end

  def update
  if @movie.update(movie_params)
    # Instead of redirecting, render the edit page again
    flash.now[:notice] = "Movie updated successfully!"
    render :edit
  else
    render :edit
  end
end


  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path, notice: "Movie was successfully deleted."
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :rating, :description, :release_date)
  end
end
