class DicomstudySerializer < ApiSerializer
  attributes
  has_many :dicomseries, include_nested_associations: true
end
