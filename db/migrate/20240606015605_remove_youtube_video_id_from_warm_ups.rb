class RemoveYoutubeVideoIdFromWarmUps < ActiveRecord::Migration[7.1]
  def change
    remove_column :warm_ups, :youtube_video_id, :string
  end
end
