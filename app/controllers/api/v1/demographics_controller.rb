module Api::V1
class DemographicsController < ApplicationController
  before_action :set_demographic, only: [:show]

  # GET /demographics
  def index
    @demographics = Demographic.all

    render json: @demographics
  end

  # GET /demographics/1
  def show
    render json: @demographic
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demographic
      @demographic = Demographic.order('SS_Patient_ID asc').find(params[:id])
    end

end
end

