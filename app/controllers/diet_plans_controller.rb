class DietPlansController < ApplicationController
  # GET /diet_plans
  # GET /diet_plans.json
  def index
    @diet_plans = DietPlan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @diet_plans }
    end
  end

  # GET /diet_plans/1
  # GET /diet_plans/1.json
  def show
    @diet_plan = DietPlan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @diet_plan }
    end
  end

  # GET /diet_plans/new
  # GET /diet_plans/new.json
  def new
    @diet_plan = DietPlan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @diet_plan }
    end
  end

  # GET /diet_plans/1/edit
  def edit
    @diet_plan = DietPlan.find(params[:id])
  end

  # POST /diet_plans
  # POST /diet_plans.json
  def create
    @diet_plan = DietPlan.new(params[:diet_plan])

    respond_to do |format|
      if @diet_plan.save
        format.html { redirect_to @diet_plan, notice: 'Diet plan was successfully created.' }
        format.json { render json: @diet_plan, status: :created, location: @diet_plan }
      else
        format.html { render action: "new" }
        format.json { render json: @diet_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /diet_plans/1
  # PUT /diet_plans/1.json
  def update
    @diet_plan = DietPlan.find(params[:id])

    respond_to do |format|
      if @diet_plan.update_attributes(params[:diet_plan])
        format.html { redirect_to @diet_plan, notice: 'Diet plan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @diet_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diet_plans/1
  # DELETE /diet_plans/1.json
  def destroy
    @diet_plan = DietPlan.find(params[:id])
    @diet_plan.destroy

    respond_to do |format|
      format.html { redirect_to diet_plans_url }
      format.json { head :no_content }
    end
  end
end
