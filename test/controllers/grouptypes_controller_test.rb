require 'test_helper'

class GrouptypesControllerTest < ActionController::TestCase
  setup do
    @grouptype = grouptypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grouptypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grouptype" do
    assert_difference('Grouptype.count') do
      post :create, grouptype: { name: @grouptype.name }
    end

    assert_redirected_to grouptype_path(assigns(:grouptype))
  end

  test "should show grouptype" do
    get :show, id: @grouptype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grouptype
    assert_response :success
  end

  test "should update grouptype" do
    patch :update, id: @grouptype, grouptype: { name: @grouptype.name }
    assert_redirected_to grouptype_path(assigns(:grouptype))
  end

  test "should destroy grouptype" do
    assert_difference('Grouptype.count', -1) do
      delete :destroy, id: @grouptype
    end

    assert_redirected_to grouptypes_path
  end
end
