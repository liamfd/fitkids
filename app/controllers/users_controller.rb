class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  
  #before :get_current_diet, except: :index 
  
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  def watcher_profile
    #@user = User.find(params[:user_id])
    @user = current_user
    #@children_watched = @user.child_guardian_relationships
    @all_articles = @user.articles

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end


  end

  def child_profile
    #This will need to change in order to have others view someone's profile
    @user = current_user
    #@user.daily_diet_maker
    @fake_diet_plan = 15

    @curr_diet = @user.daily_diets.order('created_at DESC').first
    @curr_water = @curr_diet.water_drank.to_f/@curr_diet.diet_plan.water_serv.to_f*100
    @curr_veggies = @curr_diet.veggie_eaten.to_f/@curr_diet.diet_plan.veggie_serv.to_f*100
    @curr_carbs = @curr_diet.carbs_eaten.to_f/@curr_diet.diet_plan.carbs_serv.to_f*100 
    @curr_prot = @curr_diet.prot_eaten.to_f/@curr_diet.diet_plan.prot_serv.to_f*100
    @curr_fruit = @curr_diet.fruit_eaten.to_f/@curr_diet.diet_plan.fruit_serv.to_f*100
    @curr_sweets = @curr_diet.sweets_eaten.to_f/@curr_diet.diet_plan.sweets_serv.to_f*100
    @curr_diet_progress = @curr_diet.daily_progress.to_f/@fake_diet_plan * 100
    #make a method to add up attributes in diet_plan

    @curr_progress = @user.calc_food_score("null")
    respond_to do |format|
      format.html # child_profile.html.erb
      format.json { render json: @user }
    end
  end

    def get_daily_diet
  #  @user = User.find(params[:id])
  #  if @user.daily_diet_maker
  #    @made_new = true
  #  else
  #    @made_new = false
  #  end

    @user = User.find(params[:id])
    @user.daily_diet_maker
    @curr_diet = @user.daily_diets.order('created_at DESC').first
    @user.save

    respond_to do |format|
      if @user.save
        format.html { redirect_to action: "child_profile", notice: 'Carbs were successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def increment_water
    @user = User.find(params[:id])
    @user.calc_food_score("water")
    #@curr_diet = @user.daily_diets.order('created_at DESC').first
    #@curr_diet.save done in model now

    respond_to do |format|
      if @user.save
        format.html { redirect_to action: "child_profile", notice: 'Water were successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def increment_veggies
    @user = User.find(params[:id])
    @user.calc_food_score("veggie")
    #@curr_diet = @user.daily_diets.order('created_at DESC').first
    #@curr_diet.save done in model now


    respond_to do |format|
      if @user.save
        format.html { redirect_to action: "child_profile", notice: 'Water were successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


  def increment_carbs
    @user = User.find(params[:id])
    @user.calc_food_score("carbs")
    #@curr_diet = @user.daily_diets.order('created_at DESC').first
    #@curr_diet.save done in model now


    respond_to do |format|
      if @user.save
        format.html { redirect_to action: "child_profile", notice: 'Water were successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def increment_prot
    @user = User.find(params[:id])
    @user.calc_food_score("prot")
    #@curr_diet = @user.daily_diets.order('created_at DESC').first
    #@curr_diet.save done in model now


    respond_to do |format|
      if @user.save
        format.html { redirect_to action: "child_profile", notice: 'Water were successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def increment_fruit
    @user = User.find(params[:id])
    @user.calc_food_score("fruit")
    #@curr_diet = @user.daily_diets.order('created_at DESC').first
    #@curr_diet.save done in model now


    respond_to do |format|
      if @user.save
        format.html { redirect_to action: "child_profile", notice: 'Water were successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def increment_sweets
    @user = User.find(params[:id])
    @user.calc_food_score("sweets")
    #@curr_diet = @user.daily_diets.order('created_at DESC').first
    #@curr_diet.save done in model now


    respond_to do |format|
      if @user.save
        format.html { redirect_to action: "child_profile", notice: 'Water were successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  
end
