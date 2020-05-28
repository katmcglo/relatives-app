class FamilyMembersController < ApplicationController
  def index
    if params[:query].present?
      @family_members = policy_scope(FamilyMember).search_by_city(params[:query])
    else
      @family_members = policy_scope(FamilyMember).order(created_at: :desc).search_by_kinship(params[:kinship])
    end
  end

  # .search_by_kinship(params[:kinship])

  def show
    @family_member = FamilyMember.find(params[:id])
  end

  def new
    @family_member = FamilyMember.new
  end
end
