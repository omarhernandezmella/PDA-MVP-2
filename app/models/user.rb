class User < ApplicationRecord
    has_one :personal_information
    accepts_nested_attributes_for :personal_information
    has_many :trainings
    has_one :personal_trainer_detail
    has_one :kinesiologist_detail
  
    # Validations
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true
end