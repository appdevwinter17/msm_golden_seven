class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all
  end

  def show
    @movie = Movie.find_by({ :id => params[:id]} )
  end

  def new_form
  end

  def create_row
    p = Movie.new
    p.title = params[:the_title]
    p.year = params[:year]
    p.duration = params[:duration]
    p.description = params[:description]
    p.image_url = params[:image_url]
    p.save
    redirect_to("http://localhost:3000/movies")
  end

  def destroy
    @delete = Movie.destroy(params[:id])
    redirect_to("http://localhost:3000/movies")
  end

  def edit_form
    @movie = Movie.find_by({ :id => params[:id]} )
  end

  def update_row
    u = Movie.find_by({ :id => params[:id]})
    u.title = params[:the_title]
    u.year = params[:year]
    u.duration = params[:duration]
    u.description = params[:description]
    u.image_url = params[:image_url]
    u.save
    redirect_to("http://localhost:3000/movies/#{params[:id]}")
  end
  end
