class HomeController < ApplicationController
  def index
    @monsters = Monster.order("name ASC").limit(10)
    @actions = Action.order_by_monster_count.includes(:monsters).limit(10)
    @senses = Sense.order_by_monster_count.includes(:monsters).limit(3)
  end
end
