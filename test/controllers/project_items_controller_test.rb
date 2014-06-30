require 'test_helper'

class ProjectItemsControllerTest < ActionController::TestCase
  setup do
    @project_item = project_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_item" do
    assert_difference('ProjectItem.count') do
      post :create, project_item: { description: @project_item.description, name: @project_item.name, project_id: @project_item.project_id, quantity: @project_item.quantity }
    end

    assert_redirected_to project_item_path(assigns(:project_item))
  end

  test "should show project_item" do
    get :show, id: @project_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_item
    assert_response :success
  end

  test "should update project_item" do
    patch :update, id: @project_item, project_item: { description: @project_item.description, name: @project_item.name, project_id: @project_item.project_id, quantity: @project_item.quantity }
    assert_redirected_to project_item_path(assigns(:project_item))
  end

  test "should destroy project_item" do
    assert_difference('ProjectItem.count', -1) do
      delete :destroy, id: @project_item
    end

    assert_redirected_to project_items_path
  end
end
