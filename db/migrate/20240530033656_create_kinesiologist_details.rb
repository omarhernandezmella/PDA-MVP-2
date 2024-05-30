class CreateKinesiologistDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :kinesiologist_details do |t|
      t.string :specialty
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
