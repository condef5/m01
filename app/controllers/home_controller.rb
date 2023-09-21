class HomeController < ApplicationController
  def index
    @sections = Section.where(parent_id: nil).order(:created_at).includes(:sub_sections)
  end
end
