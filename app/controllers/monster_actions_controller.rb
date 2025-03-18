class MonsterActionsController < ApplicationController
  def index
  end

  def show
    @monsteractions = MonsterAction.joins(:action).where(monster_id: params[:id]).select('monster_actions.description, actions.name AS action_name').order('actions.name ASC')
  end
end
