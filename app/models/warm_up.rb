class WarmUp < ApplicationRecord
    belongs_to :training
    has_one_attached :video
    validates :exercise, presence: true
end