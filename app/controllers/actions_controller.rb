class ActionsController < ApplicationController
  def index

    @actions = Action.order("name ASC")
  end

  def show
    @actions = Action
    .select("actions.*, COUNT(monster_actions.monster_id) AS monster_count")
    .joins(:monster_actions)
    .where(id: params[:id])
    .group("actions.id")
    .first
  end
end
