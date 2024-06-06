class Video < ApplicationRecord
    has_many :warm_up_videos
    has_many :warm_ups, through: :warm_up_videos
    has_one_attached :file
  end
  
