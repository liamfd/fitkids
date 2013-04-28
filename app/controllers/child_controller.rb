class Admins::ChildrenController < Devise::SessionsController

  # GET /child/new
  # GET /child/new.json
  def new
    @child = child.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @child }
    end
  end
  
  # POST /children
  # POST /children.json
  def create
    @child = child.new(params[:child])

    respond_to do |format|
      if @child.save
        format.html { redirect_to @child, notice: 'child was successfully created.' }
        format.json { render json: @child, status: :created, location: @child }
      else
        format.html { render action: "new" }
        format.json { render json: @child.errors, status: :unprocessable_entity }
      end
    end
  end
  
end
