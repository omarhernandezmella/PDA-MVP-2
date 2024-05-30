class CreateTrainings < ActiveRecord::Migration[7.1]
  def change
    create_table :trainings do |t|
      t.string :exercise
      t.string :classification
      t.date :day
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
