class PagesController < ApplicationController
  def home
    @featured_relatives = FamilyMember.where(featured: true)
  end

  def show
    render template: "pages/#{params[:page]}"
  end

  
end
