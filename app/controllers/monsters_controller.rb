class MonstersController < ApplicationController
  def index
    @monsters = Monster.order("name ASC").includes(:monster_actions, :actions, :monster_senses, :senses).page(params[:page]).per(10)
    @view_type = params[:view] || "list"

  end

  def show
    @monsters = Monster.find(params[:id])

    @monsteractions = MonsterAction
    .joins(:action)
    .where(monster_id: params[:id])
    .select('monster_actions.id, monster_actions.description, monster_actions.action_id, actions.name AS action_name')
    .order('actions.name ASC')

    @monstersenses = MonsterSense
    .joins(:sense)
    .where(monster_id: params[:id])
    .select('monster_senses.id, monster_senses.sense_range, monster_senses.sense_id, senses.sense_type AS sense_type')
    .order('senses.sense_type ASC')
  end
end
