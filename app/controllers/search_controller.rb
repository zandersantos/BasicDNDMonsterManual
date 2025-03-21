class SearchController < ApplicationController
  def search_all
    @query = params[:query]

    @monsters = Monster.where("name LIKE ?", "%#{@query}%")
    @senses = Sense.where("sense_type LIKE ?", "%#{@query}%")
    @actions = Action.where("name LIKE ?", "%#{@query}%")
  end
end
