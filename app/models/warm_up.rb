class WarmUp < ApplicationRecord
    belongs_to :training
  
    validates :exercise, presence: true
end