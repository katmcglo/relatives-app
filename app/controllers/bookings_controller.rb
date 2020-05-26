class BookingsController < ApplicationController
  def new
    raise
    @family_member = FamilyMember.find(params[:family_member_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @family_member = FamilyMember.find(params[:family_member_id])


  end
end
