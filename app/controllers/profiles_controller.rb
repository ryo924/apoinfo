class ProfilesController < ApplicationController

  def new
    @appointment = Appointment.find(params[:appointment_id])
    @profile = Profile.new
  end

  def create
    @appointment = Appointment.find(params[:appointment_id])
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to appointment_path(@profile.appointment)
    else
      render :new
    end
  end

  private
  def profile_params
    params.require(:profile).permit(:customer_name, :customer_occupation, :position, :note).merge(appointment_id: params[:appointment_id])
  end

end
