module Api::V1
class DicomimagesController < ApplicationController
  before_action :set_dicomimage, only: [:show]

  # GET /dicomimages
  def index
    @dicomseries = Dicomseries.order('SSDICOMSeriesID asc').find(params[:dicomseries_id])
    @dicomimages = @dicomseries.dicomimages


    render json: @dicomimages, :methods => :image_uri
  end

  # GET /dicomimages/1
  def show
    path = get_archive_path
    path = path + '\1.2.124.113532.20.49760.3731.20090529.84722.230902\1.2.840.113663.1500.1.299011973.2.1.20090529.85149.984\1.2.840.113663.1500.1.299011973.3.1.20090529.85221.484\Output.mp4'
    send_file(path, :disposition => "inline", :type => "video/mp4")
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dicomimage
      @dicomimage = Dicomimage.order('SSDICOMImageID asc').find(params[:id])
    end
  def build_path(image)
    get_archive_path
  end

  def get_archive_path
    path = SsSetting.order('GroupName desc').where("GroupName='CardioPACS\\ArchiveServer\\Settings\\Volumes\\Archive1' and KeyName='Path'")
    path.KeyValue.to_s
  end
end
end

