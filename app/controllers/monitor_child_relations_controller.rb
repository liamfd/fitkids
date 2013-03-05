class MonitorChildRelationsController < ApplicationController
  # GET /monitor_child_relations
  # GET /monitor_child_relations.json
  def index
    @monitor_child_relations = MonitorChildRelation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @monitor_child_relations }
    end
  end

  # GET /monitor_child_relations/1
  # GET /monitor_child_relations/1.json
  def show
    @monitor_child_relation = MonitorChildRelation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @monitor_child_relation }
    end
  end

  # GET /monitor_child_relations/new
  # GET /monitor_child_relations/new.json
  def new
    @monitor_child_relation = MonitorChildRelation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @monitor_child_relation }
    end
  end

  # GET /monitor_child_relations/1/edit
  def edit
    @monitor_child_relation = MonitorChildRelation.find(params[:id])
  end

  # POST /monitor_child_relations
  # POST /monitor_child_relations.json
  def create
    @monitor_child_relation = MonitorChildRelation.new(params[:monitor_child_relation])

    respond_to do |format|
      if @monitor_child_relation.save
        format.html { redirect_to @monitor_child_relation, notice: 'Monitor child relation was successfully created.' }
        format.json { render json: @monitor_child_relation, status: :created, location: @monitor_child_relation }
      else
        format.html { render action: "new" }
        format.json { render json: @monitor_child_relation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /monitor_child_relations/1
  # PUT /monitor_child_relations/1.json
  def update
    @monitor_child_relation = MonitorChildRelation.find(params[:id])

    respond_to do |format|
      if @monitor_child_relation.update_attributes(params[:monitor_child_relation])
        format.html { redirect_to @monitor_child_relation, notice: 'Monitor child relation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @monitor_child_relation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monitor_child_relations/1
  # DELETE /monitor_child_relations/1.json
  def destroy
    @monitor_child_relation = MonitorChildRelation.find(params[:id])
    @monitor_child_relation.destroy

    respond_to do |format|
      format.html { redirect_to monitor_child_relations_url }
      format.json { head :no_content }
    end
  end
end
