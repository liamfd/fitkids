require 'test_helper'

class ExerciseRepsControllerTest < ActionController::TestCase
  setup do
    @exercise_rep = exercise_reps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exercise_reps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exercise_rep" do
    assert_difference('ExerciseRep.count') do
      post :create, exercise_rep: { reps: @exercise_rep.reps }
    end

    assert_redirected_to exercise_rep_path(assigns(:exercise_rep))
  end

  test "should show exercise_rep" do
    get :show, id: @exercise_rep
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exercise_rep
    assert_response :success
  end

  test "should update exercise_rep" do
    put :update, id: @exercise_rep, exercise_rep: { reps: @exercise_rep.reps }
    assert_redirected_to exercise_rep_path(assigns(:exercise_rep))
  end

  test "should destroy exercise_rep" do
    assert_difference('ExerciseRep.count', -1) do
      delete :destroy, id: @exercise_rep
    end

    assert_redirected_to exercise_reps_path
  end
end
