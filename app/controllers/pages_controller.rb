class PagesController < ApplicationController
  def home
    @relatives = FamilyMember.where(featured: true)
  end

  def toughgrandma
    @grandmas = FamilyMember.where("description ILIKE ?", "%tough%" )
  end
end
