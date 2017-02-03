class DicomseriesSerializer < ApiSerializer
  attributes
  has_many :dicomimages, include_nested_associations: true
end
