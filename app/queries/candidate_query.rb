class CandidateQuery
  def self.all
    Candidate.includes(:skills)
  end
end
