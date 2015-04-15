class CandidateSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  has_many :skills
end
