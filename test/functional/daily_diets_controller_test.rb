require 'test_helper'

class DailyDietsControllerTest < ActionController::TestCase
  setup do
    @daily_diet = daily_diets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daily_diets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daily_diet" do
    assert_difference('DailyDiet.count') do
      post :create, daily_diet: { carbs_eaten: @daily_diet.carbs_eaten, child: @daily_diet.child, diet_plan: @daily_diet.diet_plan, fruit_eaten: @daily_diet.fruit_eaten, int,: @daily_diet.int,, personal_score: @daily_diet.personal_score, prot_eaten: @daily_diet.prot_eaten, sweets_eaten: @daily_diet.sweets_eaten, veggie_eaten: @daily_diet.veggie_eaten, water_drank: @daily_diet.water_drank }
    end

    assert_redirected_to daily_diet_path(assigns(:daily_diet))
  end

  test "should show daily_diet" do
    get :show, id: @daily_diet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daily_diet
    assert_response :success
  end

  test "should update daily_diet" do
    put :update, id: @daily_diet, daily_diet: { carbs_eaten: @daily_diet.carbs_eaten, child: @daily_diet.child, diet_plan: @daily_diet.diet_plan, fruit_eaten: @daily_diet.fruit_eaten, int,: @daily_diet.int,, personal_score: @daily_diet.personal_score, prot_eaten: @daily_diet.prot_eaten, sweets_eaten: @daily_diet.sweets_eaten, veggie_eaten: @daily_diet.veggie_eaten, water_drank: @daily_diet.water_drank }
    assert_redirected_to daily_diet_path(assigns(:daily_diet))
  end

  test "should destroy daily_diet" do
    assert_difference('DailyDiet.count', -1) do
      delete :destroy, id: @daily_diet
    end

    assert_redirected_to daily_diets_path
  end
end
