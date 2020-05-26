class FamilyMembersController < ApplicationController
    def index
    @family_members = policy_scope(FamilyMember).order(created_at: :desc)
  end
  def show
    @family_member = FamilyMember.find(params[:id])
  end
end
