class MonstersController < ApplicationController
  def index
    @monsters = Monster.order("name ASC")
  end

  def show
    @monsters = Monster.find(params[:id])
  end
end
