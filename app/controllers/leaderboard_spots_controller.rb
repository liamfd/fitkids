class LeaderboardSpotsController < ApplicationController
  # GET /leaderboard_spots
  # GET /leaderboard_spots.json
  def index
    @leaderboard_spots = LeaderboardSpot.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @leaderboard_spots }
    end
  end

  # GET /leaderboard_spots/1
  # GET /leaderboard_spots/1.json
  def show
    @leaderboard_spot = LeaderboardSpot.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @leaderboard_spot }
    end
  end

  # GET /leaderboard_spots/new
  # GET /leaderboard_spots/new.json
  def new
    @leaderboard_spot = LeaderboardSpot.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @leaderboard_spot }
    end
  end

  # GET /leaderboard_spots/1/edit
  def edit
    @leaderboard_spot = LeaderboardSpot.find(params[:id])
  end

  # POST /leaderboard_spots
  # POST /leaderboard_spots.json
  def create
    @leaderboard_spot = LeaderboardSpot.new(params[:leaderboard_spot])

    respond_to do |format|
      if @leaderboard_spot.save
        format.html { redirect_to @leaderboard_spot, notice: 'Leaderboard spot was successfully created.' }
        format.json { render json: @leaderboard_spot, status: :created, location: @leaderboard_spot }
      else
        format.html { render action: "new" }
        format.json { render json: @leaderboard_spot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /leaderboard_spots/1
  # PUT /leaderboard_spots/1.json
  def update
    @leaderboard_spot = LeaderboardSpot.find(params[:id])

    respond_to do |format|
      if @leaderboard_spot.update_attributes(params[:leaderboard_spot])
        format.html { redirect_to @leaderboard_spot, notice: 'Leaderboard spot was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @leaderboard_spot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leaderboard_spots/1
  # DELETE /leaderboard_spots/1.json
  def destroy
    @leaderboard_spot = LeaderboardSpot.find(params[:id])
    @leaderboard_spot.destroy

    respond_to do |format|
      format.html { redirect_to leaderboard_spots_url }
      format.json { head :no_content }
    end
  end
end
