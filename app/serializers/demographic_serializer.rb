class DemographicSerializer < ApiSerializer
  attributes
  has_many :dicomstudies
  class DicomstudySerializer < ApiSerializer
    attributes
  end

end
