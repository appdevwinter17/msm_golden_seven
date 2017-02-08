class ActorsController < ApplicationController
  def index
    @list_of_actors = Actor.all
  end

  def show
    @actor = Actor.find_by({ :id => params[:id]} )
  end

  def new_form
  end

  def create_row
    p = Actor.new
    p.name = params[:the_name]
    p.dob = params[:the_dob]
    p.bio = params[:the_bio]
    p.image_url = params[:the_image_url]
    p.save
    redirect_to("http://localhost:3000/actors")
  end

  def destroy
    @delete = Actor.destroy(params[:id])
    redirect_to("http://localhost:3000/actors")
  end

  def edit_form
    @actor = Actor.find_by({ :id => params[:id]} )
  end

  def update_row
    u = Actor.find_by({ :id => params[:id]})
    u.name = params[:the_new_name]
    u.dob = params[:the_new_dob]
    u.bio = params[:the_new_bio]
    u.image_url = params[:the_new_image_url]
    u.save
    redirect_to("http://localhost:3000/actors/#{params[:id]}")
  end
end
