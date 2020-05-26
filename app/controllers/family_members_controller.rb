class FamilyMembersController < ApplicationController

  def new
    @family_member = FamilyMember.new
  end
  
end
