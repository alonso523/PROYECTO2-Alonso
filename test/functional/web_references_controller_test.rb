require 'test_helper'

class WebReferencesControllerTest < ActionController::TestCase
  setup do
    @web_reference = web_references(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:web_references)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create web_reference" do
    assert_difference('WebReference.count') do
      post :create, web_reference: { anno: @web_reference.anno, annoconsulta: @web_reference.annoconsulta, autor: @web_reference.autor, dia: @web_reference.dia, diaconsulta: @web_reference.diaconsulta, mes: @web_reference.mes, mesconsulta: @web_reference.mesconsulta, sitio: @web_reference.sitio, url: @web_reference.url }
    end

    assert_redirected_to web_reference_path(assigns(:web_reference))
  end

  test "should show web_reference" do
    get :show, id: @web_reference
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @web_reference
    assert_response :success
  end

  test "should update web_reference" do
    put :update, id: @web_reference, web_reference: { anno: @web_reference.anno, annoconsulta: @web_reference.annoconsulta, autor: @web_reference.autor, dia: @web_reference.dia, diaconsulta: @web_reference.diaconsulta, mes: @web_reference.mes, mesconsulta: @web_reference.mesconsulta, sitio: @web_reference.sitio, url: @web_reference.url }
    assert_redirected_to web_reference_path(assigns(:web_reference))
  end

  test "should destroy web_reference" do
    assert_difference('WebReference.count', -1) do
      delete :destroy, id: @web_reference
    end

    assert_redirected_to web_references_path
  end
end
