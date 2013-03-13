class MonitorChildRelationshipsController < ApplicationController
  # GET /monitor_child_relationships
  # GET /monitor_child_relationships.json
  def index
    @monitor_child_relationships = MonitorChildRelationship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @monitor_child_relationships }
    end
  end

  # GET /monitor_child_relationships/1
  # GET /monitor_child_relationships/1.json
  def show
    @monitor_child_relationship = MonitorChildRelationship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @monitor_child_relationship }
    end
  end

  # GET /monitor_child_relationships/new
  # GET /monitor_child_relationships/new.json
  def new
    @monitor_child_relationship = MonitorChildRelationship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @monitor_child_relationship }
    end
  end

  # GET /monitor_child_relationships/1/edit
  def edit
    @monitor_child_relationship = MonitorChildRelationship.find(params[:id])
  end

  # POST /monitor_child_relationships
  # POST /monitor_child_relationships.json
  def create
    @monitor_child_relationship = MonitorChildRelationship.new(params[:monitor_child_relationship])

    respond_to do |format|
      if @monitor_child_relationship.save
        format.html { redirect_to @monitor_child_relationship, notice: 'Monitor child relationship was successfully created.' }
        format.json { render json: @monitor_child_relationship, status: :created, location: @monitor_child_relationship }
      else
        format.html { render action: "new" }
        format.json { render json: @monitor_child_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /monitor_child_relationships/1
  # PUT /monitor_child_relationships/1.json
  def update
    @monitor_child_relationship = MonitorChildRelationship.find(params[:id])

    respond_to do |format|
      if @monitor_child_relationship.update_attributes(params[:monitor_child_relationship])
        format.html { redirect_to @monitor_child_relationship, notice: 'Monitor child relationship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @monitor_child_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monitor_child_relationships/1
  # DELETE /monitor_child_relationships/1.json
  def destroy
    @monitor_child_relationship = MonitorChildRelationship.find(params[:id])
    @monitor_child_relationship.destroy

    respond_to do |format|
      format.html { redirect_to monitor_child_relationships_url }
      format.json { head :no_content }
    end
  end
end
