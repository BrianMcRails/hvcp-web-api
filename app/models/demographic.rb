class Demographic < ApplicationRecord
  self.table_name = 'demographics'
  self.primary_key = 'SS_Patient_ID'
  has_many :dicomstudies, foreign_key: "SS_Patient_ID"

end
