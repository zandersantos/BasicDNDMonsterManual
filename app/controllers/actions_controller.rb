class ActionsController < ApplicationController
  def index
    @actions = Action
                  .select("actions.*, COUNT(monster_actions.monster_id) AS monster_count")
                  .left_joins(:monster_actions, :monsters)
                  .group("actions.id")
                  .order("name ASC").page(params[:page]).per(10)

    @view_type = params[:view] || "list"
  end

  def show
    @action = Action
                .select("actions.*, COUNT(monster_actions.monster_id) AS monster_count")
                .joins(:monster_actions)
                .group("actions.id")
                .find(params[:id])

    @monsters = Monster
                  .joins(:monster_actions)
                  .where(monster_actions: { action_id: @action.id })
                  .order("name ASC")
  end
end