class FamilyMembersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  
  def index
    @family_members = policy_scope(FamilyMember).order(created_at: :desc)
  end

  def new
    @family_member = FamilyMember.new
    authorize @family_member
  end
  
  def create
    @family_member = FamilyMember.new(params.require(:family_member).permit(:name, :age, :kinship, :description, :image))
    authorize @family_member
    @family_member.user = current_user
    if @family_member.save!
      redirect_to root_path
    else
      render "new"
    end
  end

  def edit
  end

  def destroy
  end

  def show
    @family_member = FamilyMember.find(params[:id])
    @booking = Booking.new
    authorize @booking
  end
end
