class Listing < ApplicationRecord
  belongs_to :user
  has_many :photos
    #必須項目
    validates :area_type, presence: true
    validates :category_type, presence: true
    validates :people_type, presence: true
end
