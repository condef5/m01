class HomeController < ApplicationController
  def index
    @container = false
    @sections = Section.where(parent_id: nil).order(:created_at).includes(:sub_sections, :topics)
  end
end
