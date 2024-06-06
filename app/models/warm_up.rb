class WarmUp < ApplicationRecord
    belongs_to :training
    has_many_attached :videos
    has_many :warm_up_videos
    has_many :videos, through: :warm_up_videos
    validates :exercise, presence: true
  
    def assign_videos(video_ids)
      self.video_ids = video_ids
    end
  end
  