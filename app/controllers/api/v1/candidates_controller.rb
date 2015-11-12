 module API
   module V1
     class CandidatesController < ApplicationController
      protect_from_forgery with: :null_session
      respond_to :json

      # GET /api/v1/candidates.json
      def candidates
        @candidates = CandidateQuery.all
        respond_with @candidates
      end

      # GET /api/v1/candidates_by_skill.json
      def candidates_by_skill
        @candidates = CandidateSkillQuery.new(params[:skill_name])
        if @candidates.valid?
          respond_with @candidates.search
        else
          respond_with @candidates.errors, status: :unprocessable_entity
        end
      end
    end
  end
end
