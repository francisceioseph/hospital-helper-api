# frozen_string_literal: true

class TelephonesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_telephone, only: %i[show update destroy]

  # GET /telephones
  # GET /telephones.json
  def index
    @telephones = Telephone.all
  end

  # GET /telephones/1
  # GET /telephones/1.json
  def show; end

  # POST /telephones
  # POST /telephones.json
  def create
    @telephone = Telephone.new(telephone_params)

    if @telephone.save
      render :show
    else
      render json: @telephone.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /telephones/1
  # PATCH/PUT /telephones/1.json
  def update
    if @telephone.update(telephone_params)
      render :show
    else
      render json: @telephone.errors, status: :unprocessable_entity
    end
  end

  # DELETE /telephones/1
  # DELETE /telephones/1.json
  def destroy
    @telephone.destroy
  end

  private

  def set_telephone
    @telephone = Telephone.find(params[:id])
  end

  def telephone_params
    params.require(:telephone).permit(:number, :contact_person, :profile_id)
  end
end
