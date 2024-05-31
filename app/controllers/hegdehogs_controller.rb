class HegdehogsController < ApplicationController
  before_action :set_hegdehog, only: %i[ show edit update destroy ]

  # GET /hegdehogs
  def index
    @hegdehogs = Hegdehog.all
  end

  # GET /hegdehogs/1
  def show
  end

  # GET /hegdehogs/new
  def new
    @hegdehog = Hegdehog.new
  end

  # GET /hegdehogs/1/edit
  def edit
  end

  # POST /hegdehogs
  def create
    @hegdehog = Hegdehog.new(hegdehog_params)

    if @hegdehog.save
      redirect_to @hegdehog, notice: "Hegdehog was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hegdehogs/1
  def update
    if @hegdehog.update(hegdehog_params)
      redirect_to @hegdehog, notice: "Hegdehog was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /hegdehogs/1
  def destroy
    @hegdehog.destroy!
    redirect_to hegdehogs_url, notice: "Hegdehog was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hegdehog
      @hegdehog = Hegdehog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hegdehog_params
      params.require(:hegdehog).permit(:name, :age)
    end
end
