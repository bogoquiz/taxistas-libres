class Cabdriver < ActiveRecord::Base
  validates :name, presence: true, length: {minimum: 3, maximum: 100}   	
  validates :cell, presence: true, length: {minimum: 10, maximum: 10}
  validates :occupied, presence: true, :inclusion => { :in => [true, false] }
  validates :latitude, presence: true
  validates :longitude, presence: true
  scope :occupied, -> (occupied) { where occupied: occupied }
  scope :search, -> (search_term) { where('name LIKE ?', "%#{search_term}%") }
  reverse_geocoded_by :latitude, :longitude #, :address => :location
  #after_validation :reverse_geocode
end
