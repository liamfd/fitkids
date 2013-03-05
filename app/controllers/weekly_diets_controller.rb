class WeeklyDietsController < ApplicationController
  # GET /weekly_diets
  # GET /weekly_diets.json
  def index
    @weekly_diets = WeeklyDiet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @weekly_diets }
    end
  end

  # GET /weekly_diets/1
  # GET /weekly_diets/1.json
  def show
    @weekly_diet = WeeklyDiet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @weekly_diet }
    end
  end

  # GET /weekly_diets/new
  # GET /weekly_diets/new.json
  def new
    @weekly_diet = WeeklyDiet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @weekly_diet }
    end
  end

  # GET /weekly_diets/1/edit
  def edit
    @weekly_diet = WeeklyDiet.find(params[:id])
  end

  # POST /weekly_diets
  # POST /weekly_diets.json
  def create
    @weekly_diet = WeeklyDiet.new(params[:weekly_diet])

    respond_to do |format|
      if @weekly_diet.save
        format.html { redirect_to @weekly_diet, notice: 'Weekly diet was successfully created.' }
        format.json { render json: @weekly_diet, status: :created, location: @weekly_diet }
      else
        format.html { render action: "new" }
        format.json { render json: @weekly_diet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /weekly_diets/1
  # PUT /weekly_diets/1.json
  def update
    @weekly_diet = WeeklyDiet.find(params[:id])

    respond_to do |format|
      if @weekly_diet.update_attributes(params[:weekly_diet])
        format.html { redirect_to @weekly_diet, notice: 'Weekly diet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @weekly_diet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weekly_diets/1
  # DELETE /weekly_diets/1.json
  def destroy
    @weekly_diet = WeeklyDiet.find(params[:id])
    @weekly_diet.destroy

    respond_to do |format|
      format.html { redirect_to weekly_diets_url }
      format.json { head :no_content }
    end
  end
end
