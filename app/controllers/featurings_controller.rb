class FeaturingsController < ApplicationController
  # GET /featurings
  # GET /featurings.json
  def index
    @featurings = Featuring.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @featurings }
    end
  end

  # GET /featurings/1
  # GET /featurings/1.json
  def show
    @featuring = Featuring.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @featuring }
    end
  end

  # GET /featurings/new
  # GET /featurings/new.json
  def new
    @featuring = Featuring.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @featuring }
    end
  end

  # GET /featurings/1/edit
  def edit
    @featuring = Featuring.find(params[:id])
  end

  # POST /featurings
  # POST /featurings.json
  def create
    @featuring = Featuring.new(params[:featuring])

    respond_to do |format|
      if @featuring.save
        format.html { redirect_to @featuring, notice: 'Featuring was successfully created.' }
        format.json { render json: @featuring, status: :created, location: @featuring }
      else
        format.html { render action: "new" }
        format.json { render json: @featuring.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /featurings/1
  # PUT /featurings/1.json
  def update
    @featuring = Featuring.find(params[:id])

    respond_to do |format|
      if @featuring.update_attributes(params[:featuring])
        format.html { redirect_to @featuring, notice: 'Featuring was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @featuring.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /featurings/1
  # DELETE /featurings/1.json
  def destroy
    @featuring = Featuring.find(params[:id])
    @featuring.destroy

    respond_to do |format|
      format.html { redirect_to featurings_url }
      format.json { head :no_content }
    end
  end
end
