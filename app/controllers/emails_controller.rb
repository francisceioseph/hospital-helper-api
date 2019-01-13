class EmailsController < ApplicationController
  before_action :set_email, only: [:show, :update, :destroy]

  # GET /emails
  # GET /emails.json
  def index
    @emails = Email.all
  end

  # GET /emails/1
  # GET /emails/1.json
  def show
  end

  # POST /emails
  # POST /emails.json
  def create
    @email = Email.new(email_params)

    if @email.save
      render :show
    else
      render json: @email.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /emails/1
  # PATCH/PUT /emails/1.json
  def update
    if @email.update(email_params)
      render :show
    else
      render json: @email.errors, status: :unprocessable_entity
    end
  end

  # DELETE /emails/1
  # DELETE /emails/1.json
  def destroy
    @email.destroy
  end

  private
    def set_email
      @email = Email.find(params[:id])
    end

    def email_params
      params.require(:email).permit(:address, :profile_id)
    end
end
