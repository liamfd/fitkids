class RegimenController < ApplicationController
  # GET /regimen
  # GET /regimen.json
  def index
    @regimen = Regiman.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @regimen }
    end
  end

  # GET /regimen/1
  # GET /regimen/1.json
  def show
    @regiman = Regiman.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @regiman }
    end
  end

  # GET /regimen/new
  # GET /regimen/new.json
  def new
    @regiman = Regiman.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @regiman }
    end
  end

  # GET /regimen/1/edit
  def edit
    @regiman = Regiman.find(params[:id])
  end

  # POST /regimen
  # POST /regimen.json
  def create
    @regiman = Regiman.new(params[:regiman])

    respond_to do |format|
      if @regiman.save
        format.html { redirect_to @regiman, notice: 'Regiman was successfully created.' }
        format.json { render json: @regiman, status: :created, location: @regiman }
      else
        format.html { render action: "new" }
        format.json { render json: @regiman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /regimen/1
  # PUT /regimen/1.json
  def update
    @regiman = Regiman.find(params[:id])

    respond_to do |format|
      if @regiman.update_attributes(params[:regiman])
        format.html { redirect_to @regiman, notice: 'Regiman was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @regiman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regimen/1
  # DELETE /regimen/1.json
  def destroy
    @regiman = Regiman.find(params[:id])
    @regiman.destroy

    respond_to do |format|
      format.html { redirect_to regimen_url }
      format.json { head :no_content }
    end
  end
end
