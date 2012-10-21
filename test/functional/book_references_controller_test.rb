require 'test_helper'

class BookReferencesControllerTest < ActionController::TestCase
  setup do
    @book_reference = book_references(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:book_references)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book_reference" do
    assert_difference('BookReference.count') do
      post :create, book_reference: { anno: @book_reference.anno, autor: @book_reference.autor, ciudad: @book_reference.ciudad, editorial: @book_reference.editorial, paginas: @book_reference.paginas, titulo: @book_reference.titulo }
    end

    assert_redirected_to book_reference_path(assigns(:book_reference))
  end

  test "should show book_reference" do
    get :show, id: @book_reference
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book_reference
    assert_response :success
  end

  test "should update book_reference" do
    put :update, id: @book_reference, book_reference: { anno: @book_reference.anno, autor: @book_reference.autor, ciudad: @book_reference.ciudad, editorial: @book_reference.editorial, paginas: @book_reference.paginas, titulo: @book_reference.titulo }
    assert_redirected_to book_reference_path(assigns(:book_reference))
  end

  test "should destroy book_reference" do
    assert_difference('BookReference.count', -1) do
      delete :destroy, id: @book_reference
    end

    assert_redirected_to book_references_path
  end
end
