class DailyExercisesController < ApplicationController
  before_action :set_daily_exercise, only: [:show, :edit, :update, :destroy]

  # GET /daily_exercises
  # GET /daily_exercises.json
  def index
    @daily_exercises = DailyExercise.all
  end

  # GET /daily_exercises/1
  # GET /daily_exercises/1.json
  def show
  end

  # GET /daily_exercises/new
  def new
    @daily_exercise = DailyExercise.new
    @elist = ExerciseType.list_exercises
  end

  # GET /daily_exercises/1/edit
  def edit
  end

  # POST /daily_exercises
  # POST /daily_exercises.json
  def create
    @daily_exercise = DailyExercise.new(daily_exercise_params)

    respond_to do |format|
      if @daily_exercise.save
        format.html { redirect_to @daily_exercise, notice: 'Daily exercise was successfully created.' }
        format.json { render :show, status: :created, location: @daily_exercise }
      else
        format.html { render :new }
        format.json { render json: @daily_exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_exercises/1
  # PATCH/PUT /daily_exercises/1.json
  def update
    respond_to do |format|
      if @daily_exercise.update(daily_exercise_params)
        format.html { redirect_to @daily_exercise, notice: 'Daily exercise was successfully updated.' }
        format.json { render :show, status: :ok, location: @daily_exercise }
      else
        format.html { render :edit }
        format.json { render json: @daily_exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_exercises/1
  # DELETE /daily_exercises/1.json
  def destroy
    @daily_exercise.destroy
    respond_to do |format|
      format.html { redirect_to daily_exercises_url, notice: 'Daily exercise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_exercise
      @daily_exercise = DailyExercise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daily_exercise_params
      params.require(:daily_exercise).permit(:exercise_type_id, :duration, :date)
    end
end
