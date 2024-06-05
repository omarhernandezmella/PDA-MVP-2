class ChangeDayToBeStringInTrainings < ActiveRecord::Migration[7.1]
  def up
    change_column :trainings, :day, :string
  end

  def down
    change_column :trainings, :day, :date
  end
end
