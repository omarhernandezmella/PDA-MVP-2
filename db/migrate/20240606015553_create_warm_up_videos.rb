class CreateWarmUpVideos < ActiveRecord::Migration[7.1]
  def change
    create_table :warm_up_videos do |t|
      t.references :warm_up, null: false, foreign_key: true
      t.references :video, null: false, foreign_key: true

      t.timestamps
    end
  end
end
