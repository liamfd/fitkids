class DailyDietsController < ApplicationController
  # GET /daily_diets
  # GET /daily_diets.json
  def index
    @daily_diets = DailyDiet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @daily_diets }
    end
  end

  # GET /daily_diets/1
  # GET /daily_diets/1.json
  def show
    @daily_diet = DailyDiet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @daily_diet }
    end
  end

  # GET /daily_diets/new
  # GET /daily_diets/new.json
  def new
    @daily_diet = DailyDiet.new
    @daily_diet.day_made = Date.current

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @daily_diet }
    end
  end

  # GET /daily_diets/1/edit
  def edit
    @daily_diet = DailyDiet.find(params[:id])
  end

  # POST /daily_diets
  # POST /daily_diets.json
  def create
    @daily_diet = DailyDiet.new(params[:daily_diet])

    respond_to do |format|
      if @daily_diet.save
        format.html { redirect_to @daily_diet, notice: 'Daily diet was successfully created.' }
        format.json { render json: @daily_diet, status: :created, location: @daily_diet }
      else
        format.html { render action: "new" }
        format.json { render json: @daily_diet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /daily_diets/1
  # PUT /daily_diets/1.json
  def update
    @daily_diet = DailyDiet.find(params[:id])

    respond_to do |format|
      if @daily_diet.update_attributes(params[:daily_diet])
        format.html { redirect_to @daily_diet, notice: 'Daily diet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @daily_diet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_diets/1
  # DELETE /daily_diets/1.json
  def destroy
    @daily_diet = DailyDiet.find(params[:id])
    @daily_diet.destroy

    respond_to do |format|
      format.html { redirect_to daily_diets_url }
      format.json { head :no_content }
    end
  end
end
