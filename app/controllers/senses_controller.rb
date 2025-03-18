class SensesController < ApplicationController
  def index
    @senses = Sense
                  .select("actions.*, COUNT(monster_actions.monster_id) AS monster_count")
                  .left_joins(:monster_actions, :monsters)
                  .group("actions.id")
                  .order("name ASC")
    @view_type = params[:view] || "list"
  end

  def show
    @Sense = Action
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