class BookingsController < ApplicationController
  def new
    @family_member = FamilyMember.find(params[:family_member_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def show
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :family_member_id)
  end
end
