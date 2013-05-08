class DailyExercisesController < ApplicationController
  # GET /daily_exercises
  # GET /daily_exercises.json
  def index
    @daily_exercises = DailyExercise.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @daily_exercises }
    end
  end

  # GET /daily_exercises/1
  # GET /daily_exercises/1.json
  def show
    @daily_exercise = DailyExercise.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @daily_exercise }
    end
  end

  # GET /daily_exercises/new
  # GET /daily_exercises/new.json
  def new
    @daily_exercise = DailyExercise.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @daily_exercise }
    end
  end

  # GET /daily_exercises/1/edit
  def edit
    @daily_exercise = DailyExercise.find(params[:id])
  end

  # POST /daily_exercises
  # POST /daily_exercises.json
  def create
    @daily_exercise = DailyExercise.new(params[:daily_exercise])

    respond_to do |format|
      if @daily_exercise.save
        format.html { redirect_to @daily_exercise, notice: 'Daily exercise was successfully created.' }
        format.json { render json: @daily_exercise, status: :created, location: @daily_exercise }
      else
        format.html { render action: "new" }
        format.json { render json: @daily_exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /daily_exercises/1
  # PUT /daily_exercises/1.json
  def update
    @daily_exercise = DailyExercise.find(params[:id])

    respond_to do |format|
      if @daily_exercise.update_attributes(params[:daily_exercise])
        format.html { redirect_to @daily_exercise, notice: 'Daily exercise was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @daily_exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_exercises/1
  # DELETE /daily_exercises/1.json
  def destroy
    @daily_exercise = DailyExercise.find(params[:id])
    @daily_exercise.destroy

    respond_to do |format|
      format.html { redirect_to daily_exercises_url }
      format.json { head :no_content }
    end
  end
end
