class PersonalInformation < ApplicationRecord
    belongs_to :user
  
    validates :weight, :height, :gender, presence: true
end