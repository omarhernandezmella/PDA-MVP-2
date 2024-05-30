class KinesiologistDetail < ApplicationRecord
    belongs_to :user
  
    validates :specialty, presence: true
    validates :description, presence: true
end