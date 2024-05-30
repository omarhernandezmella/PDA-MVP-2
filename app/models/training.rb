class Training < ApplicationRecord
    belongs_to :user
    has_many :warm_ups
  
    validates :exercise, presence: true
    validates :day, presence: true
end