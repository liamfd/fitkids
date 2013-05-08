require 'test_helper'

class DailyExercisesControllerTest < ActionController::TestCase
  setup do
    @daily_exercise = daily_exercises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daily_exercises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daily_exercise" do
    assert_difference('DailyExercise.count') do
      post :create, daily_exercise: { day_made: @daily_exercise.day_made, minutes_exercised: @daily_exercise.minutes_exercised }
    end

    assert_redirected_to daily_exercise_path(assigns(:daily_exercise))
  end

  test "should show daily_exercise" do
    get :show, id: @daily_exercise
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daily_exercise
    assert_response :success
  end

  test "should update daily_exercise" do
    put :update, id: @daily_exercise, daily_exercise: { day_made: @daily_exercise.day_made, minutes_exercised: @daily_exercise.minutes_exercised }
    assert_redirected_to daily_exercise_path(assigns(:daily_exercise))
  end

  test "should destroy daily_exercise" do
    assert_difference('DailyExercise.count', -1) do
      delete :destroy, id: @daily_exercise
    end

    assert_redirected_to daily_exercises_path
  end
end
