require 'test_helper'

class DietPlansControllerTest < ActionController::TestCase
  setup do
    @diet_plan = diet_plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diet_plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diet_plan" do
    assert_difference('DietPlan.count') do
      post :create, diet_plan: { carbs_serv: @diet_plan.carbs_serv, fruit_serv: @diet_plan.fruit_serv, prot_serv: @diet_plan.prot_serv, sweets_serv: @diet_plan.sweets_serv, veggie_serv: @diet_plan.veggie_serv, water_serv: @diet_plan.water_serv }
    end

    assert_redirected_to diet_plan_path(assigns(:diet_plan))
  end

  test "should show diet_plan" do
    get :show, id: @diet_plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diet_plan
    assert_response :success
  end

  test "should update diet_plan" do
    put :update, id: @diet_plan, diet_plan: { carbs_serv: @diet_plan.carbs_serv, fruit_serv: @diet_plan.fruit_serv, prot_serv: @diet_plan.prot_serv, sweets_serv: @diet_plan.sweets_serv, veggie_serv: @diet_plan.veggie_serv, water_serv: @diet_plan.water_serv }
    assert_redirected_to diet_plan_path(assigns(:diet_plan))
  end

  test "should destroy diet_plan" do
    assert_difference('DietPlan.count', -1) do
      delete :destroy, id: @diet_plan
    end

    assert_redirected_to diet_plans_path
  end
end
