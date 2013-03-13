require 'test_helper'

class MonitorProfilesControllerTest < ActionController::TestCase
  setup do
    @monitor_profile = monitor_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:monitor_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create monitor_profile" do
    assert_difference('MonitorProfile.count') do
      post :create, monitor_profile: { bio: @monitor_profile.bio, name: @monitor_profile.name }
    end

    assert_redirected_to monitor_profile_path(assigns(:monitor_profile))
  end

  test "should show monitor_profile" do
    get :show, id: @monitor_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @monitor_profile
    assert_response :success
  end

  test "should update monitor_profile" do
    put :update, id: @monitor_profile, monitor_profile: { bio: @monitor_profile.bio, name: @monitor_profile.name }
    assert_redirected_to monitor_profile_path(assigns(:monitor_profile))
  end

  test "should destroy monitor_profile" do
    assert_difference('MonitorProfile.count', -1) do
      delete :destroy, id: @monitor_profile
    end

    assert_redirected_to monitor_profiles_path
  end
end
