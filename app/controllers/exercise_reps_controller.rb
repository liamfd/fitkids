class ExerciseRepsController < ApplicationController
  # GET /exercise_reps
  # GET /exercise_reps.json
  def index
    @exercise_reps = ExerciseRep.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exercise_reps }
    end
  end

  # GET /exercise_reps/1
  # GET /exercise_reps/1.json
  def show
    @exercise_rep = ExerciseRep.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exercise_rep }
    end
  end

  # GET /exercise_reps/new
  # GET /exercise_reps/new.json
  def new
    @exercise_rep = ExerciseRep.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exercise_rep }
    end
  end

  # GET /exercise_reps/1/edit
  def edit
    @exercise_rep = ExerciseRep.find(params[:id])
  end

  # POST /exercise_reps
  # POST /exercise_reps.json
  def create
    @exercise_rep = ExerciseRep.new(params[:exercise_rep])

    respond_to do |format|
      if @exercise_rep.save
        format.html { redirect_to @exercise_rep, notice: 'Exercise rep was successfully created.' }
        format.json { render json: @exercise_rep, status: :created, location: @exercise_rep }
      else
        format.html { render action: "new" }
        format.json { render json: @exercise_rep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exercise_reps/1
  # PUT /exercise_reps/1.json
  def update
    @exercise_rep = ExerciseRep.find(params[:id])

    respond_to do |format|
      if @exercise_rep.update_attributes(params[:exercise_rep])
        format.html { redirect_to @exercise_rep, notice: 'Exercise rep was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exercise_rep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercise_reps/1
  # DELETE /exercise_reps/1.json
  def destroy
    @exercise_rep = ExerciseRep.find(params[:id])
    @exercise_rep.destroy

    respond_to do |format|
      format.html { redirect_to exercise_reps_url }
      format.json { head :no_content }
    end
  end
end
