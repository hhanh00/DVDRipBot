require 'test_helper'

class DisksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:disks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create disk" do
    assert_difference('Disk.count') do
      post :create, :disk => { }
    end

    assert_redirected_to disk_path(assigns(:disk))
  end

  test "should show disk" do
    get :show, :id => disks(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => disks(:one).to_param
    assert_response :success
  end

  test "should update disk" do
    put :update, :id => disks(:one).to_param, :disk => { }
    assert_redirected_to disk_path(assigns(:disk))
  end

  test "should destroy disk" do
    assert_difference('Disk.count', -1) do
      delete :destroy, :id => disks(:one).to_param
    end

    assert_redirected_to disks_path
  end
end
