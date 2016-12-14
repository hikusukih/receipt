require 'test_helper'

class LocationtypesControllerTest < ActionController::TestCase
  setup do
    @locationtype = locationtypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:locationtypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create locationtype" do
    assert_difference('Locationtype.count') do
      post :create, locationtype: { item_id: @locationtype.item_id, location_id: @locationtype.location_id, name: @locationtype.name }
    end

    assert_redirected_to locationtype_path(assigns(:locationtype))
  end

  test "should show locationtype" do
    get :show, id: @locationtype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @locationtype
    assert_response :success
  end

  test "should update locationtype" do
    patch :update, id: @locationtype, locationtype: { item_id: @locationtype.item_id, location_id: @locationtype.location_id, name: @locationtype.name }
    assert_redirected_to locationtype_path(assigns(:locationtype))
  end

  test "should destroy locationtype" do
    assert_difference('Locationtype.count', -1) do
      delete :destroy, id: @locationtype
    end

    assert_redirected_to locationtypes_path
  end
end
