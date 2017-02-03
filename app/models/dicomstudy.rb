class Dicomstudy < ApplicationRecord
  self.table_name = 'DICOMStudies'
  self.primary_key = 'SSDICOMStudyID'
  belongs_to :demographic, foreign_key: "SS_Patient_ID"
  has_many :dicomseries, foreign_key: "SSDICOMStudyID"
end
