class CandidatesController < ApplicationController
  before_action :set_candidate, only: [:show, :edit, :update, :destroy]
  responders :flash
  respond_to :html

  # GET /candidates
  def index
    @candidates = CandidateQuery.all
    respond_with @candidates
  end

  # GET /candidates/1
  def show
    respond_with @candidate
  end

  # GET /candidates/new
  def new
    @candidate = Candidate.new
    respond_with @candidate
  end

  # GET /candidates/1/edit
  def edit
  end

  # POST /candidates
  def create
    @candidate = Candidate.new(candidate_params)
    @candidate.save
    respond_with @candidate
  end

  # PATCH/PUT /candidates/1
  def update
    @candidate.update(candidate_params)
    respond_with @candidate
  end

  # DELETE /candidates/1
  # DELETE /candidates/1.json
  def destroy
    @candidate.destroy
    respond_to do |format|
      format.html { redirect_to candidates_url }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_candidate
      @candidate = Candidate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def candidate_params
      params.require(:candidate).permit(:name, :email, { skills: [ :name ] } )
    end
end
