class ChildGuardianRelationshipsController < ApplicationController
  # GET /child_guardian_relationships
  # GET /child_guardian_relationships.json
  def index
    @child_guardian_relationships = ChildGuardianRelationship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @child_guardian_relationships }
    end
  end

  # GET /child_guardian_relationships/1
  # GET /child_guardian_relationships/1.json
  def show
    @child_guardian_relationship = ChildGuardianRelationship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @child_guardian_relationship }
    end
  end

  # GET /child_guardian_relationships/new
  # GET /child_guardian_relationships/new.json
  def new
    @child_guardian_relationship = ChildGuardianRelationship.new
    @children = User.where(:type => "Child").order(:name)

    if(params.has_key?(:watcher_id))
      @this_watcher_id = params[:watcher_id]
    else
      @this_watcher_id = 0
    end

    @child_guardian_relationship.watcher_id = @this_watcher_id

    @watchers = User.where(:type => "Watcher").order(:name)
   # @selected_child = params[child][id]
   # @selected_watcher = params[watcher][id]
   # @child_guardian_relationship.set_child(@selected_child)
   # @child_guardian_relationship.set_watcher(@selected_watcher)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @child_guardian_relationship }
    end
  end

  # GET /child_guardian_relationships/1/edit
  def edit
    @child_guardian_relationship = ChildGuardianRelationship.find(params[:id])
  end

  # POST /child_guardian_relationships
  # POST /child_guardian_relationships.json
  def create
    @child_guardian_relationship = ChildGuardianRelationship.new(params[:child_guardian_relationship])

    respond_to do |format|
      if @child_guardian_relationship.save
        format.html { redirect_to @child_guardian_relationship, notice: 'Child guardian relationship was successfully created.' }
        format.json { render json: @child_guardian_relationship, status: :created, location: @child_guardian_relationship }
      else
        format.html { render action: "new" }
        format.json { render json: @child_guardian_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /child_guardian_relationships/1
  # PUT /child_guardian_relationships/1.json
  def update
    @child_guardian_relationship = ChildGuardianRelationship.find(params[:id])

    respond_to do |format|
      if @child_guardian_relationship.update_attributes(params[:child_guardian_relationship])
        format.html { redirect_to @child_guardian_relationship, notice: 'Child guardian relationship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @child_guardian_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /child_guardian_relationships/1
  # DELETE /child_guardian_relationships/1.json
  def destroy
    @child_guardian_relationship = ChildGuardianRelationship.find(params[:id])
    @child_guardian_relationship.destroy

    respond_to do |format|
      format.html { redirect_to child_guardian_relationships_url }
      format.json { head :no_content }
    end
  end
end
