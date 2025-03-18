class ActionsController < ApplicationController
  def index

    @actions = Action.order("name ASC")
  end

  def show
    @actions = Action.find(params[:id])
  end
end
