require 'test_helper'

class JugadoresControllerTest < ActionController::TestCase
  setup do
    @jugadore = jugadores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jugadores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jugadore" do
    assert_difference('Jugadore.count') do
      post :create, jugadore: { nombre: @jugadore.nombre, posicion: @jugadore.posicion }
    end

    assert_redirected_to jugadore_path(assigns(:jugadore))
  end

  test "should show jugadore" do
    get :show, id: @jugadore
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jugadore
    assert_response :success
  end

  test "should update jugadore" do
    patch :update, id: @jugadore, jugadore: { nombre: @jugadore.nombre, posicion: @jugadore.posicion }
    assert_redirected_to jugadore_path(assigns(:jugadore))
  end

  test "should destroy jugadore" do
    assert_difference('Jugadore.count', -1) do
      delete :destroy, id: @jugadore
    end

    assert_redirected_to jugadores_path
  end
end
