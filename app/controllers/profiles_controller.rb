class ProfilesController < ApplicationController

  def index
    @appointment = Appointment.find(params[:appointment_id])
    @profiles = Profile.all.order(created_at: "DESC")
  end

  def new
    @appointment = Appointment.find(params[:appointment_id])
    @profile = Profile.new
  end

  def create
    @appointment = Appointment.find(params[:appointment_id])
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to appointment_profiles_path(@appointment)
    else
      render :new
    end
  end

  def show
    @appointment = Appointment.find(params[:appointment_id])
    @profile = Profile.find(params[:id])
  end

  def edit
    @appointment = Appointment.find(params[:appointment_id])
    @profile = Profile.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:appointment_id])
    @profile = Profile.find(params[:id])
    if @profile.update(profile_params)
      redirect_to appointment_profile_path(@profile)
    else
      render :edit
    end
  end

  private
  def profile_params
    params.require(:profile).permit(:customer_name, :customer_occupation, :position, :note).merge(appointment_id: params[:appointment_id])
  end

end
