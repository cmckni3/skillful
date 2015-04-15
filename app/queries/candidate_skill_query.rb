class CandidateSkillQuery
  include ActiveModel::Validations
  include ActiveModel::Serialization

  attr_reader :skill_name

  validates :skill_name, presence: true

  def initialize(skill_name, relation = Candidate.default_scoped)
    @skill_name = skill_name
    return if invalid?
    @relation = relation.includes(:skills).where(skills: { name: skill_name })
  end

  def search
    @relation
  end

  def find_each(&block)
    @relation.find_each(&block)
  end
end

