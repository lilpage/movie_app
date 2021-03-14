class Api::ActorsController < ApplicationController

  def show
    @actor = Actor.first
    render "show.json.jb"
  end

end
