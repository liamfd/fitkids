class ExercisePlansController < ApplicationController
  # GET /exercise_plans
  # GET /exercise_plans.json
  def index
    @exercise_plans = ExercisePlan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exercise_plans }
    end
  end

  # GET /exercise_plans/1
  # GET /exercise_plans/1.json
  def show
    @exercise_plan = ExercisePlan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exercise_plan }
    end
  end

  # GET /exercise_plans/new
  # GET /exercise_plans/new.json
  def new
    @exercise_plan = ExercisePlan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exercise_plan }
    end
  end

  # GET /exercise_plans/1/edit
  def edit
    @exercise_plan = ExercisePlan.find(params[:id])
  end

  # POST /exercise_plans
  # POST /exercise_plans.json
  def create
    @exercise_plan = ExercisePlan.new(params[:exercise_plan])

    respond_to do |format|
      if @exercise_plan.save
        format.html { redirect_to @exercise_plan, notice: 'Exercise plan was successfully created.' }
        format.json { render json: @exercise_plan, status: :created, location: @exercise_plan }
      else
        format.html { render action: "new" }
        format.json { render json: @exercise_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exercise_plans/1
  # PUT /exercise_plans/1.json
  def update
    @exercise_plan = ExercisePlan.find(params[:id])

    respond_to do |format|
      if @exercise_plan.update_attributes(params[:exercise_plan])
        format.html { redirect_to @exercise_plan, notice: 'Exercise plan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exercise_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercise_plans/1
  # DELETE /exercise_plans/1.json
  def destroy
    @exercise_plan = ExercisePlan.find(params[:id])
    @exercise_plan.destroy

    respond_to do |format|
      format.html { redirect_to exercise_plans_url }
      format.json { head :no_content }
    end
  end
end
