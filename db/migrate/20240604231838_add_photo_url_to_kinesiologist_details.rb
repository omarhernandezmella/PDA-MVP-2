class AddPhotoUrlToKinesiologistDetails < ActiveRecord::Migration[7.1]
  def change
    add_column :kinesiologist_details, :photo_url, :string
  end
end
