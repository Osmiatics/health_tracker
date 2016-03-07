class CreateExerciseTypes < ActiveRecord::Migration
  def change
    create_table :exercise_types do |t|
      t.string :name
      t.integer :calories_per_minute

      t.timestamps null: false
    end
  end
end
