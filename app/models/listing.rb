class Listing < ApplicationRecord
  belongs_to :user
  has_many :photos
  has_many :reservations
    #必須項目
    validates :area_type, presence: true
    validates :category_type, presence: true
    validates :people_type, presence: true
    
    geocoded_by :address
    after_validation :geocode, :if => :address_changed?
end
