class Dicomseries < ApplicationRecord
  self.table_name = 'DICOMSeries'
  self.primary_key = 'SSDICOMSeriesID'
  belongs_to :dicomstudy, foreign_key: "SSDICOMStudyID"
  has_many :dicomimages, foreign_key: "SSDICOMSeriesID"
  attr_accessor :SS_Patient_ID

end
