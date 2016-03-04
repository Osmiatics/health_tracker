class KilocalController < ApplicationController
  before_action :set_kilocal, only: [:show, :edit, :update, :destroy]

  def new
    @kilocal = Kilocal.new
  end

  def index
    @kilocals = Kilocal.all
  end

  def show
  end

  def edit
  end

  def create
    @kilocal = Kilocal.new(kilocal_params)

    respond_to do |format|
      if @kilocal.save
        format.html { redirect_to @kilocal, notice: 'Kilocal was successfully created.' }
        format.json { render :show, status: :created, location: @kilocal }
      else
        format.html { render :new }
        format.json { render json: @kilocal.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @kilocal.update(kilocal_params)
        format.html { redirect_to @kilocal, notice: 'Kilocal was successfully updated.' }
        format.json { render :show, status: :ok, location: @kilocal }
      else
        format.html { render :edit }
        format.json { render json: @kilocal.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @kilocal.destroy
    respond_to do |format|
      format.html { redirect_to kilocals_url, notice: 'Kilocal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kilocal
      @kilocal = Kilocal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kilocal_params
      params.require(:kilocal).permit(:daily_intake, :daily_goal, :date)
    end
end
