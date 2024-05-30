class PersonalTrainerDetail < ApplicationRecord
    belongs_to :user
  
    validates :specialty, presence: true
    validates :profession, presence: true
end