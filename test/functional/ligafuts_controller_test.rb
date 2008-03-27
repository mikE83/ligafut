require File.dirname(__FILE__) + '/../test_helper'

class LigafutsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:ligafuts)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_ligafut
    assert_difference('Ligafut.count') do
      post :create, :ligafut => { }
    end

    assert_redirected_to ligafut_path(assigns(:ligafut))
  end

  def test_should_show_ligafut
    get :show, :id => ligafuts(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => ligafuts(:one).id
    assert_response :success
  end

  def test_should_update_ligafut
    put :update, :id => ligafuts(:one).id, :ligafut => { }
    assert_redirected_to ligafut_path(assigns(:ligafut))
  end

  def test_should_destroy_ligafut
    assert_difference('Ligafut.count', -1) do
      delete :destroy, :id => ligafuts(:one).id
    end

    assert_redirected_to ligafuts_path
  end
end
