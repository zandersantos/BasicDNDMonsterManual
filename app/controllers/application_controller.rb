class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  helper_method :csm_pages

  def csm_pages
    Page.all
  end

  def search
    @query = params[:query]
    @results = Page.where("title LIKE ? OR content LIKE ?", "%#{@query}%", "%#{@query}%")
  end

end
