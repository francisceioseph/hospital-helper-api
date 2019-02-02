class SpecialtiesController < ApplicationController
  before_action :set_specialty, only: [:show, :update, :destroy]

  # GET /specialties
  # GET /specialties.json
  def index
    @specialties = Specialty.all
  end

  # GET /specialties/1
  # GET /specialties/1.json
  def show
  end

  # POST /specialties
  # POST /specialties.json
  def create
    @specialty = Specialty.new(specialty_params)

    if @specialty.save
      render :show, status: :created
    else
      render json: @specialty.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /specialties/1
  # PATCH/PUT /specialties/1.json
  def update
    if @specialty.update(specialty_params)
      render :show, status: :ok
    else
      render json: @specialty.errors, status: :unprocessable_entity
    end
  end

  # DELETE /specialties/1
  # DELETE /specialties/1.json
  def destroy
    specialty = @specialty.destroy
    render json: specialty, status: :ok
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_specialty
      @specialty = Specialty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def specialty_params
      params.require(:specialty).permit(:specialty_name)
    end
end
