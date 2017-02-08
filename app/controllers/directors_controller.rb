class DirectorsController < ApplicationController
  def index
    @list_of_directors = Director.all
  end

  def show
    @director = Director.find_by({ :id => params[:id]} )
  end

  def new_form
  end

  def create_row
    p = Director.new
    p.name = params[:the_name]
    p.bio = params[:the_bio]
    p.dob = params[:dob]
    p.image_url = params[:the_image_url]
    p.save
    redirect_to("http://localhost:3000/directors")
  end

  def destroy
    @delete = Director.destroy(params[:id])
    redirect_to("http://localhost:3000/directors")
  end

  def edit_form
    @director = Director.find_by({ :id => params[:id]} )
  end

  def update_row
    u = Director.find_by({ :id => params[:id]})
    u.name = params[:the_new_name]
    u.dob = params[:the_new_dob]
    u.bio = params[:the_new_bio]
    u.image_url = params[:the_new_image_url]
    u.save
    redirect_to("http://localhost:3000/directors/#{params[:id]}")
  end
end
