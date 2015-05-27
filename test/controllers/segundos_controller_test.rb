require 'test_helper'

class SegundosControllerTest < ActionController::TestCase
  setup do
    @segundo = segundos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:segundos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create segundo" do
    assert_difference('Segundo.count') do
      post :create, segundo: { description: @segundo.description, idsegundo: @segundo.idsegundo, name: @segundo.name }
    end

    assert_redirected_to segundo_path(assigns(:segundo))
  end

  test "should show segundo" do
    get :show, id: @segundo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @segundo
    assert_response :success
  end

  test "should update segundo" do
    patch :update, id: @segundo, segundo: { description: @segundo.description, idsegundo: @segundo.idsegundo, name: @segundo.name }
    assert_redirected_to segundo_path(assigns(:segundo))
  end

  test "should destroy segundo" do
    assert_difference('Segundo.count', -1) do
      delete :destroy, id: @segundo
    end

    assert_redirected_to segundos_path
  end
end
