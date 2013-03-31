class DailyRegimenController < ApplicationController
  # GET /daily_regimen
  # GET /daily_regimen.json
  def index
    @daily_regimen = DailyRegimen.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @daily_regimen }
    end
  end

  # GET /daily_regimen/1
  # GET /daily_regimen/1.json
  def show
    @daily_regiman = DailyRegimen.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @daily_regiman }
    end
  end

  # GET /daily_regimen/new
  # GET /daily_regimen/new.json
  def new
    @daily_regiman = DailyRegimen.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @daily_regiman }
    end
  end

  # GET /daily_regimen/1/edit
  def edit
    @daily_regiman = DailyRegimen.find(params[:id])
  end

  # POST /daily_regimen
  # POST /daily_regimen.json
  def create
    @daily_regiman = DailyRegimen.new(params[:daily_regiman])

    respond_to do |format|
      if @daily_regiman.save
        format.html { redirect_to @daily_regiman, notice: 'Daily regimen was successfully created.' }
        format.json { render json: @daily_regiman, status: :created, location: @daily_regiman }
      else
        format.html { render action: "new" }
        format.json { render json: @daily_regiman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /daily_regimen/1
  # PUT /daily_regimen/1.json
  def update
    @daily_regiman = DailyRegimen.find(params[:id])

    respond_to do |format|
      if @daily_regiman.update_attributes(params[:daily_regiman])
        format.html { redirect_to @daily_regiman, notice: 'Daily regimen was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @daily_regiman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_regimen/1
  # DELETE /daily_regimen/1.json
  def destroy
    @daily_regiman = DailyRegimen.find(params[:id])
    @daily_regiman.destroy

    respond_to do |format|
      format.html { redirect_to daily_regimen_index_url }
      format.json { head :no_content }
    end
  end
end
