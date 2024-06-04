class AddYoutubeVideoIdToWarmUps < ActiveRecord::Migration[7.1]
  def change
    add_column :warm_ups, :youtube_video_id, :string
  end
end
