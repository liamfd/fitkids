require 'test_helper'

class FeaturingsControllerTest < ActionController::TestCase
  setup do
    @featuring = featurings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:featurings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create featuring" do
    assert_difference('Featuring.count') do
      post :create, featuring: { level: @featuring.level }
    end

    assert_redirected_to featuring_path(assigns(:featuring))
  end

  test "should show featuring" do
    get :show, id: @featuring
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @featuring
    assert_response :success
  end

  test "should update featuring" do
    put :update, id: @featuring, featuring: { level: @featuring.level }
    assert_redirected_to featuring_path(assigns(:featuring))
  end

  test "should destroy featuring" do
    assert_difference('Featuring.count', -1) do
      delete :destroy, id: @featuring
    end

    assert_redirected_to featurings_path
  end
end
