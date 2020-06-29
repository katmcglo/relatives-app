class PagesController < ApplicationController
  def home
    @featured_relatives = FamilyMember.where(featured: true)
  end
end
