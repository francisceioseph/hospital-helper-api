# frozen_string_literal: true

class PacientsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_pacient, only: %i[show update destroy]

  # GET /pacients
  # GET /pacients.json
  def index
    @pacients = Pacient.all
  end

  # GET /pacients/1
  # GET /pacients/1.json
  def show; end

  # POST /pacients
  # POST /pacients.json
  def create
    @pacient = Pacient.new(pacient_params)

    if @pacient.save
      render :show, status: :created
    else
      render json: @pacient.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pacients/1
  # PATCH/PUT /pacients/1.json
  def update
    if @pacient.update(pacient_params)
      render :show, status: :ok
    else
      render json: @pacient.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pacients/1
  # DELETE /pacients/1.json
  def destroy
    @pacient.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_pacient
    @pacient = Pacient.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def pacient_params
    params.require(:pacient).permit(:profile_type)
  end
end
