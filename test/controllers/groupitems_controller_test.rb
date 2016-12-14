require 'test_helper'

class GroupitemsControllerTest < ActionController::TestCase
  setup do
    @groupitem = groupitems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:groupitems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create groupitem" do
    assert_difference('Groupitem.count') do
      post :create, groupitem: { group_id: @groupitem.group_id, item_id: @groupitem.item_id }
    end

    assert_redirected_to groupitem_path(assigns(:groupitem))
  end

  test "should show groupitem" do
    get :show, id: @groupitem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @groupitem
    assert_response :success
  end

  test "should update groupitem" do
    patch :update, id: @groupitem, groupitem: { group_id: @groupitem.group_id, item_id: @groupitem.item_id }
    assert_redirected_to groupitem_path(assigns(:groupitem))
  end

  test "should destroy groupitem" do
    assert_difference('Groupitem.count', -1) do
      delete :destroy, id: @groupitem
    end

    assert_redirected_to groupitems_path
  end
end
