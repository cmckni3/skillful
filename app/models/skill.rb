class Skill < ActiveRecord::Base
  belongs_to :candidate

  validates :name, :candidate, presence: true

  def to_s
    name
  end
end
