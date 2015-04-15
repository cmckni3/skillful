require 'test_helper'

class SkillTest < ActiveSupport::TestCase
  test 'saves with all required parameters' do
    assert skills(:javascript).valid?
  end

  test "doesn't save without all parameters" do
    assert Skill.new(candidate_id: 1).invalid?, 'The skill should not be valid without a name'
    assert Skill.new(name: 'Test').invalid?, 'The skill should not be valid without a candidate'
  end
end
