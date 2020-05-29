class PagesController < ApplicationController
  def home
    @relatives = FamilyMember.where(featured: true)
  end
end
