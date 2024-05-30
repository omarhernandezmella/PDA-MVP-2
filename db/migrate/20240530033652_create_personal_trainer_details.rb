class CreatePersonalTrainerDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :personal_trainer_details do |t|
      t.string :specialty
      t.string :profession
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
