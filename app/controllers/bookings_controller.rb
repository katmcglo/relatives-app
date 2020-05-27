class BookingsController < ApplicationController
  def new
    @family_member = FamilyMember.find(params[:family_member_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @family_member = FamilyMember.find(params[:family_member_id])
    @booking.user = current_user
    @booking.family_member = @family_member
    authorize @booking
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :family_member_id)
  end
end
