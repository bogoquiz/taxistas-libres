class CabdriverSerializer < ActiveModel::Serializer
  attributes :id, :name, :cell, :occupied, :latitude, :longitude
end
