require 'test_helper'

class API::V1::CandidatesControllerTest < ActionController::TestCase
  setup do
    @candidate = candidates(:one)
  end

  test '#candidates' do
    get :candidates, format: :json
    assert_equal Candidate.count, JSON.parse(response.body).length
    assert_response :success
  end

  test '#candidates_by_skill returns an error when skill name is missing' do
    get :candidates_by_skill, format: :json
    assert_response :unprocessable_entity
  end

  test '#candidates_by_skill returns candidates with a certain skill' do
    get :candidates_by_skill, format: :json, skill_name: @candidate.skills.first.name
    candidate = JSON.parse(response.body).find do |c|
      c['id'] == @candidate.id
    end
    refute_nil candidate
    assert_response :success
  end
end
