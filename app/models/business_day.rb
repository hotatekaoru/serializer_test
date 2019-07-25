class BusinessDay < ApplicationRecord
  belongs_to :shop
  has_many :business_hours
end
