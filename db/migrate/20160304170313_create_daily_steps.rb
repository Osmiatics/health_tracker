class CreateDailySteps < ActiveRecord::Migration
  def change
    create_table :daily_steps do |t|
      t.integer :amount
      t.date :date

      t.timestamps null: false
    end
  end
end
