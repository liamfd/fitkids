require 'test_helper'

class DailyRegimenControllerTest < ActionController::TestCase
  setup do
    @daily_regiman = daily_regimen(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daily_regimen)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daily_regiman" do
    assert_difference('DailyRegimen.count') do
      post :create, daily_regiman: { focus: @daily_regiman.focus }
    end

    assert_redirected_to daily_regiman_path(assigns(:daily_regiman))
  end

  test "should show daily_regiman" do
    get :show, id: @daily_regiman
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daily_regiman
    assert_response :success
  end

  test "should update daily_regiman" do
    put :update, id: @daily_regiman, daily_regiman: { focus: @daily_regiman.focus }
    assert_redirected_to daily_regiman_path(assigns(:daily_regiman))
  end

  test "should destroy daily_regiman" do
    assert_difference('DailyRegimen.count', -1) do
      delete :destroy, id: @daily_regiman
    end

    assert_redirected_to daily_regimen_index_path
  end
end
