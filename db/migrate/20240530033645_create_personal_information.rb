class CreatePersonalInformation < ActiveRecord::Migration[7.1]
  def change
    create_table :personal_informations do |t|
      t.decimal :weight
      t.decimal :height
      t.string :lesions
      t.string :gender
      t.string :physical_activity
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
