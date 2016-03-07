class CreateDailyExercises < ActiveRecord::Migration
  def change
    create_table :daily_exercises do |t|
      t.integer :exercise_type_id
      t.integer :duration
      t.date :date

      t.timestamps null: false
    end
  end
end
