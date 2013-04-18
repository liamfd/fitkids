require 'test_helper'

class ChildGuardianRelationshipsControllerTest < ActionController::TestCase
  setup do
    @child_guardian_relationship = child_guardian_relationships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:child_guardian_relationships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create child_guardian_relationship" do
    assert_difference('ChildGuardianRelationship.count') do
      post :create, child_guardian_relationship: { bonus: @child_guardian_relationship.bonus, relation: @child_guardian_relationship.relation }
    end

    assert_redirected_to child_guardian_relationship_path(assigns(:child_guardian_relationship))
  end

  test "should show child_guardian_relationship" do
    get :show, id: @child_guardian_relationship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @child_guardian_relationship
    assert_response :success
  end

  test "should update child_guardian_relationship" do
    put :update, id: @child_guardian_relationship, child_guardian_relationship: { bonus: @child_guardian_relationship.bonus, relation: @child_guardian_relationship.relation }
    assert_redirected_to child_guardian_relationship_path(assigns(:child_guardian_relationship))
  end

  test "should destroy child_guardian_relationship" do
    assert_difference('ChildGuardianRelationship.count', -1) do
      delete :destroy, id: @child_guardian_relationship
    end

    assert_redirected_to child_guardian_relationships_path
  end
end
