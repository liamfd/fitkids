require 'test_helper'

class LeaderboardSpotsControllerTest < ActionController::TestCase
  setup do
    @leaderboard_spot = leaderboard_spots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leaderboard_spots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leaderboard_spot" do
    assert_difference('LeaderboardSpot.count') do
      post :create, leaderboard_spot: { place: @leaderboard_spot.place }
    end

    assert_redirected_to leaderboard_spot_path(assigns(:leaderboard_spot))
  end

  test "should show leaderboard_spot" do
    get :show, id: @leaderboard_spot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @leaderboard_spot
    assert_response :success
  end

  test "should update leaderboard_spot" do
    put :update, id: @leaderboard_spot, leaderboard_spot: { place: @leaderboard_spot.place }
    assert_redirected_to leaderboard_spot_path(assigns(:leaderboard_spot))
  end

  test "should destroy leaderboard_spot" do
    assert_difference('LeaderboardSpot.count', -1) do
      delete :destroy, id: @leaderboard_spot
    end

    assert_redirected_to leaderboard_spots_path
  end
end
