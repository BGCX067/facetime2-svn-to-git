require File.dirname(__FILE__) + '/../test_helper'

class JournalentriesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:journalentries)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_journalentry
    assert_difference('Journalentry.count') do
      post :create, :journalentry => { }
    end

    assert_redirected_to journalentry_path(assigns(:journalentry))
  end

  def test_should_show_journalentry
    get :show, :id => journalentries(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => journalentries(:one).id
    assert_response :success
  end

  def test_should_update_journalentry
    put :update, :id => journalentries(:one).id, :journalentry => { }
    assert_redirected_to journalentry_path(assigns(:journalentry))
  end

  def test_should_destroy_journalentry
    assert_difference('Journalentry.count', -1) do
      delete :destroy, :id => journalentries(:one).id
    end

    assert_redirected_to journalentries_path
  end
end
