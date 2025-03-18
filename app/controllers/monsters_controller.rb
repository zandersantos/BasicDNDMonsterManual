class MonstersController < ApplicationController
  def index
    @monsters = Monster.order("name ASC").includes(:monster_actions, :actions)
    @monsterslist = params[:view] || "list"

  end

  def show
    @monsters = Monster.find(params[:id])

    @monsteractions = MonsterAction
    .joins(:action)
    .where(monster_id: params[:id])
    .select('monster_actions.id, monster_actions.description, monster_actions.action_id, actions.name AS action_name')
    .order('actions.name ASC')

  end
end
