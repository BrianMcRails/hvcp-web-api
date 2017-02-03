class Dicomimage < ApplicationRecord
  self.table_name = 'DICOMImages'
  self.primary_key = 'SSDICOMImageID'
  belongs_to :dicomseries, foreign_key: "SSDICOMSeriesID"
  attr_accessor :SSDICOMStudyID, :SS_Patient_ID

  def image_uri
    #series_id = self.order('SSDICOMImageID asc').dicomseries
    uri = 'http://api.lvh.me:3000/v1/demographics/' + self.SS_Patient_ID.to_s + '/dicomstudies/' + self.SSDICOMStudyID.to_s +
        '/dicomseries/'+ self.SSDICOMSeriesID.to_s + '/dicomimages/' + self.SSDICOMImageID.to_s

  end
end
