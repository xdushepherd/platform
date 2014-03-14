require 'test_helper'

class Admin::InstrumentsControllerTest < ActionController::TestCase
  setup do
    @admin_instrument = admin_instruments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_instruments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_instrument" do
    assert_difference('Admin::Instrument.count') do
      post :create, admin_instrument: {  }
    end

    assert_redirected_to admin_instrument_path(assigns(:admin_instrument))
  end

  test "should show admin_instrument" do
    get :show, id: @admin_instrument
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_instrument
    assert_response :success
  end

  test "should update admin_instrument" do
    patch :update, id: @admin_instrument, admin_instrument: {  }
    assert_redirected_to admin_instrument_path(assigns(:admin_instrument))
  end

  test "should destroy admin_instrument" do
    assert_difference('Admin::Instrument.count', -1) do
      delete :destroy, id: @admin_instrument
    end

    assert_redirected_to admin_instruments_path
  end
end
