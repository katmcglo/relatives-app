class BookingsController < ApplicationController
  def new
    @family_members = FamilyMember.find(params[:family_members_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new

  end
end
