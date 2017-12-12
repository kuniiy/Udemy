class Listing < ApplicationRecord
  belongs_to :user
  has_many :photos
  has_many :reservations
  has_many :reviews
    
    #必須項目
    validates :area_type, presence: true
    validates :category_type, presence: true
    validates :people_type, presence: true
    
    geocoded_by :address
    after_validation :geocode, :if => :address_changed?
    
    def average_star_rate
     reviews.count == 0 ? 0 : reviews.average(:rate).round(1)
        
    end
end
