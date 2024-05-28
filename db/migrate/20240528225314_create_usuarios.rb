class CreateUsuarios < ActiveRecord::Migration[7.1]
  def change
    create_table :usuarios do |t|
      t.float :weight
      t.float :height
      t.string :lesions
      t.string :genre
      t.string :physical_activity

      t.timestamps
    end
  end
end
