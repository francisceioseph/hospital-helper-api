# frozen_string_literal: true

class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def create
    @doctor = Doctor.new attr_params
    @doctor.save
  end

  def show
    @doctor = Doctor.find id_params
  end

  def update
    @doctor = Doctor.find id_params
    @doctor.update_attributes attr_params
  end

  protected

  def attr_params
    params.require(:doctor).permit(:profile_type)
  end
end
