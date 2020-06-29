class PagesController < ApplicationController
  def home
    @featured_relatives = FamilyMember.where(featured: true)
  end

  def toughgrandma
    @grandmas = FamilyMember.where("description ILIKE ?", "%tough%" )
  end
end
