require 'test_helper'

class RegimenControllerTest < ActionController::TestCase
  setup do
    @regiman = regimen(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regimen)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create regiman" do
    assert_difference('Regiman.count') do
      post :create, regiman: { exercise: @regiman.exercise }
    end

    assert_redirected_to regiman_path(assigns(:regiman))
  end

  test "should show regiman" do
    get :show, id: @regiman
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @regiman
    assert_response :success
  end

  test "should update regiman" do
    put :update, id: @regiman, regiman: { exercise: @regiman.exercise }
    assert_redirected_to regiman_path(assigns(:regiman))
  end

  test "should destroy regiman" do
    assert_difference('Regiman.count', -1) do
      delete :destroy, id: @regiman
    end

    assert_redirected_to regimen_path
  end
end
