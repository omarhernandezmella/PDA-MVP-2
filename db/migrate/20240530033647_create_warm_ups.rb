class CreateWarmUps < ActiveRecord::Migration[7.1]
  def change
    create_table :warm_ups do |t|
      t.string :exercise
      t.references :training, null: false, foreign_key: true

      t.timestamps
    end
  end
end
