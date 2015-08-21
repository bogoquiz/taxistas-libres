class Cabdriver < ActiveRecord::Base
  scope :state, -> (state) { where state: state }
  scope :search, -> (search_term) { where('name LIKE ?', "%#{search_term}%") }
end
