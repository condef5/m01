class HomeController < ApplicationController
  def index
    @sections = Section.where(parent_id: nil).order(:title).includes(:sub_sections)
  end
end
