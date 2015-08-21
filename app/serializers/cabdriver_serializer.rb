class CabdriverSerializer < ActiveModel::Serializer
  attributes :id, :name, :cell, :state
end
