class HomeController < ApplicationController
  def index
    @monsters = Monster.order("name ASC").limit(10)
    @actions = Action.limit(10)
  end
end
