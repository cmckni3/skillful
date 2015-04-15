require 'test_helper'

class CandidateTest < ActiveSupport::TestCase
  setup do
    @candidate = candidates(:one)
  end

  test 'saves with all required parameters' do
    assert @candidate.valid?
  end

  test "doesn't save without all parameters" do
    assert Candidate.new(email: 'new@test.com').invalid?, 'The candidate should have a name'
    assert Candidate.new(name: @candidate.name).invalid?, 'The candidate should have an email address'
  end

  test 'email addresses are unique' do
    assert Candidate.new(email: @candidate.email).invalid?, 'The candidate should have a unique email address'
  end
end
