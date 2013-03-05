require 'test_helper'

class WeeklyDietsControllerTest < ActionController::TestCase
  setup do
    @weekly_diet = weekly_diets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weekly_diets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weekly_diet" do
    assert_difference('WeeklyDiet.count') do
      post :create, weekly_diet: { carb_goal: @weekly_diet.carb_goal, carbs_eaten: @weekly_diet.carbs_eaten, dairy_eaten: @weekly_diet.dairy_eaten, dairy_goal: @weekly_diet.dairy_goal, fruit_eaten: @weekly_diet.fruit_eaten, fruit_goal: @weekly_diet.fruit_goal, protein_eaten: @weekly_diet.protein_eaten, protein_goal: @weekly_diet.protein_goal, sweets_eaten: @weekly_diet.sweets_eaten, sweets_goal: @weekly_diet.sweets_goal, veggie_eaten: @weekly_diet.veggie_eaten, veggie_goal: @weekly_diet.veggie_goal, water_eaten: @weekly_diet.water_eaten, water_goal: @weekly_diet.water_goal }
    end

    assert_redirected_to weekly_diet_path(assigns(:weekly_diet))
  end

  test "should show weekly_diet" do
    get :show, id: @weekly_diet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weekly_diet
    assert_response :success
  end

  test "should update weekly_diet" do
    put :update, id: @weekly_diet, weekly_diet: { carb_goal: @weekly_diet.carb_goal, carbs_eaten: @weekly_diet.carbs_eaten, dairy_eaten: @weekly_diet.dairy_eaten, dairy_goal: @weekly_diet.dairy_goal, fruit_eaten: @weekly_diet.fruit_eaten, fruit_goal: @weekly_diet.fruit_goal, protein_eaten: @weekly_diet.protein_eaten, protein_goal: @weekly_diet.protein_goal, sweets_eaten: @weekly_diet.sweets_eaten, sweets_goal: @weekly_diet.sweets_goal, veggie_eaten: @weekly_diet.veggie_eaten, veggie_goal: @weekly_diet.veggie_goal, water_eaten: @weekly_diet.water_eaten, water_goal: @weekly_diet.water_goal }
    assert_redirected_to weekly_diet_path(assigns(:weekly_diet))
  end

  test "should destroy weekly_diet" do
    assert_difference('WeeklyDiet.count', -1) do
      delete :destroy, id: @weekly_diet
    end

    assert_redirected_to weekly_diets_path
  end
end
