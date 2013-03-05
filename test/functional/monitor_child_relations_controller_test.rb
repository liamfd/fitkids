require 'test_helper'

class MonitorChildRelationsControllerTest < ActionController::TestCase
  setup do
    @monitor_child_relation = monitor_child_relations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:monitor_child_relations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create monitor_child_relation" do
    assert_difference('MonitorChildRelation.count') do
      post :create, monitor_child_relation: { child: @monitor_child_relation.child, monitor: @monitor_child_relation.monitor, relation: @monitor_child_relation.relation }
    end

    assert_redirected_to monitor_child_relation_path(assigns(:monitor_child_relation))
  end

  test "should show monitor_child_relation" do
    get :show, id: @monitor_child_relation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @monitor_child_relation
    assert_response :success
  end

  test "should update monitor_child_relation" do
    put :update, id: @monitor_child_relation, monitor_child_relation: { child: @monitor_child_relation.child, monitor: @monitor_child_relation.monitor, relation: @monitor_child_relation.relation }
    assert_redirected_to monitor_child_relation_path(assigns(:monitor_child_relation))
  end

  test "should destroy monitor_child_relation" do
    assert_difference('MonitorChildRelation.count', -1) do
      delete :destroy, id: @monitor_child_relation
    end

    assert_redirected_to monitor_child_relations_path
  end
end
