class SensesController < ApplicationController
  def index
    @senses = Sense
                  .select("actions.*, COUNT(monster_actions.monster_id) AS monster_count")
                  .left_joins(:mosnter_senses)
                  .group("senses.id")
                  .order("sense_type ASC")
    @view_type = params[:view] || "list"
  end

  def show
    @sense = Sense
               .select("senses.*, COUNT(monster_senses.monster_id) AS monster_count")
               .joins(:monster_senses)
               .where(id: params[:id])
               .group("senses.id")
               .first

    @monsters = Monster
                  .joins(:monster_senses)
                  .where(monster_senses: { sense_id: @sense.id })
                  .order("name ASC")
  end
end