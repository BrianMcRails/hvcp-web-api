module Api::V1
class DicomseriesController < ApplicationController
  before_action :set_dicomseries, only: [:show, :update, :destroy]

  # GET /dicomseries
  def index
    @dicomstudy = Dicomstudy.order('SSDICOMStudyID asc').find(params[:dicomstudy_id])
    @dicomseries = @dicomstudy.dicomseries

    render json: @dicomseries
  end

  # GET /dicomseries/1
  def show
    render json: @dicomseries
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dicomseries
      @dicomseries = Dicomseries.order('SSDICOMSeriesID asc').find(params[:id])
    end

end
end

