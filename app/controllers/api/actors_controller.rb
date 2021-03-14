class Api::ActorsController < ApplicationController

  def index
    @actors = Actor.all
    render "index.json.jb"
  end
  
  def show
    @actor = Actor.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      age: params[:age],
      gender: params[:gender],
      known_for: params[:known_for]
    )
    if @actor.save
      render "show.json.jb"
    else
      render json: {errors: @actor.errors.full_messages}, status: 406
    end
  end

  def update
    @actor = Actor.find_by(id: params[:id])
    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.age = params[:age] || @actor.age
    @actor.gender = params[:gender] || @actor.gender
    @actor.known_for = params[:known_for] || @actor.known_for
    if @actor.save
      render "show.json.jb"
    else
      render json: {errors: @actor.errors.full_messages}, status: 406
    end
  end

end
