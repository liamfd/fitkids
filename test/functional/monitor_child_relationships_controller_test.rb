require 'test_helper'

class MonitorChildRelationshipsControllerTest < ActionController::TestCase
  setup do
    @monitor_child_relationship = monitor_child_relationships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:monitor_child_relationships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create monitor_child_relationship" do
    assert_difference('MonitorChildRelationship.count') do
      post :create, monitor_child_relationship: { bonus: @monitor_child_relationship.bonus, child: @monitor_child_relationship.child, monitor: @monitor_child_relationship.monitor, relation: @monitor_child_relationship.relation }
    end

    assert_redirected_to monitor_child_relationship_path(assigns(:monitor_child_relationship))
  end

  test "should show monitor_child_relationship" do
    get :show, id: @monitor_child_relationship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @monitor_child_relationship
    assert_response :success
  end

  test "should update monitor_child_relationship" do
    put :update, id: @monitor_child_relationship, monitor_child_relationship: { bonus: @monitor_child_relationship.bonus, child: @monitor_child_relationship.child, monitor: @monitor_child_relationship.monitor, relation: @monitor_child_relationship.relation }
    assert_redirected_to monitor_child_relationship_path(assigns(:monitor_child_relationship))
  end

  test "should destroy monitor_child_relationship" do
    assert_difference('MonitorChildRelationship.count', -1) do
      delete :destroy, id: @monitor_child_relationship
    end

    assert_redirected_to monitor_child_relationships_path
  end
end
