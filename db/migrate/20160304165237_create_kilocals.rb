class CreateKilocals < ActiveRecord::Migration
  def change
    create_table :kilocals do |t|
      t.integer :daily_goal
      t.integer :daily_intake
      t.datetime :date

      t.timestamps null: false
    end
  end
end
