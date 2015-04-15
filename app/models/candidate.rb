class Candidate < ActiveRecord::Base
  has_many :skills, dependent: :destroy

  validates :name, :email, presence: true
  validates :email, uniqueness: true
  validates_associated :skills

  def to_s
    name
  end
end
