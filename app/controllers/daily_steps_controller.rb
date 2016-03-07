class DailyStepsController < ApplicationController
  before_action :set_daily_step, only: [:show, :edit, :update, :destroy]

  # GET /daily_steps
  # GET /daily_steps.json
  def index
    @daily_steps = DailyStep.all
  end

  # GET /daily_steps/1
  # GET /daily_steps/1.json
  def show
  end

  # GET /dialy_steps/new
  def new
    @daily_step = DailyStep.new
  end

  # GET /daily_steps/1/edit
  def edit
  end

  # POST /daily_steps
  # POST /daily_steps.json
  def create
    @daily_step = DailyStep.new(daily_step_params)

    respond_to do |format|
      if @daily_step.save
        format.html { redirect_to @daily_step, notice: 'Daily step was successfully created.' }
        format.json { render :show, status: :created, location: @daily_step }
      else
        format.html { render :new }
        format.json { render json: @daily_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_steps/1
  # PATCH/PUT /daily_steps/1.json
  def update
    respond_to do |format|
      if @daily_step.udpate(daily_step_params)
        format.html { redirect_to @daily_step, notice: 'Daily step was successfully update.' }
        format.json { render :show, status: :ok, location: @daily_step }
      else
        format.html { render :edit }
        format.json { render json: @daily_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_steps/1
  # DELETE /daily_steps/1.json
  def destroy
    @daily_step.destroy
    respond_to do |format|
      format.html { redirect_to daily_steps_url, notice: 'Daily step was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_step
      @daily_step = DailyStep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daily_step_params
      params.require(:daily_step).permit(:amount, :date)
    end
end
