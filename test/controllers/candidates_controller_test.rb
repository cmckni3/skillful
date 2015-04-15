require 'test_helper'

class CandidatesControllerTest < ActionController::TestCase
  setup do
    @candidate = candidates(:one)
  end

  test "#index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidates)
  end

  test "#new" do
    get :new
    assert_response :success
  end

  test "#create" do
    assert_difference('Candidate.count') do
      post :create, candidate: { email: 'new@test.com', name: 'New Candidate' }
    end

    assert_redirected_to candidate_path(assigns(:candidate))
  end

  test "#show" do
    get :show, id: @candidate
    assert_response :success
  end

  test "#edit" do
    get :edit, id: @candidate
    assert_response :success
  end

  test "#update" do
    patch :update, id: @candidate, candidate: { email: @candidate.email, name: @candidate.name }
    assert_redirected_to candidate_path(assigns(:candidate))
  end

  test "#destroy" do
    assert_difference('Candidate.count', -1) do
      delete :destroy, id: @candidate
    end

    assert_redirected_to candidates_path
  end
end
