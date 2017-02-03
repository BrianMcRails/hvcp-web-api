module Api::V1
class DicomstudiesController < ApplicationController
  before_action :set_dicomstudy, only: [:show]

  # GET /dicomstudies
  def index
    @demographic = Demographic.order('SS_Patient_ID asc').find(params[:demographic_id])
    @dicomstudies = @demographic.dicomstudies
    @dicomstudies.each do |study|
      study.dicomseries.each do |series|
        series.dicomimages.each do |image|
          image.SS_Patient_ID = study.SS_Patient_ID
          image.SSDICOMStudyID = study.SSDICOMStudyID
        end
      end
    end

    render json: @dicomstudies
  end

  # GET /dicomstudies/1
  def show
    render json: @dicomstudy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dicomstudy
      @dicomstudy = Dicomstudy.order('SSDICOMStudyID asc').find(params[:id])
    end


end
end

