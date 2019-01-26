# frozen_string_literal: true

class AddressesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_address, only: %i[show update destroy]

  # GET /addresses
  # GET /addresses.json
  def index
    @addresses = Address.all
  end

  # GET /addresses/1
  # GET /addresses/1.json
  def show; end

  # POST /addresses
  # POST /addresses.json
  def create
    @address = Address.new(address_params)

    if @address.save
      render :show, status: :created
    else
      render json: @address.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /addresses/1
  # PATCH/PUT /addresses/1.json
  def update
    if @address.update(address_params)
      render :show, status: :ok
    else
      render json: @address.errors, status: :unprocessable_entity
    end
  end

  # DELETE /addresses/1
  # DELETE /addresses/1.json
  def destroy
    @address.destroy
  end

  private

  def set_address
    @address = Address.find(params[:id])
  end

  def address_params
    params.require(:address).permit(
      :profile_id,
      :street_name,
      :house_number,
      :zipcode,
      :neighborhood,
      :city,
      :state
    )
  end
end
