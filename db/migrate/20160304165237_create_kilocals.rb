class CreateKilocals < ActiveRecord::Migration
  def change
    create_table :kilocals do |t|
      t.datetime :date
      t.integer :daily_goal
      t.integer :daily_intake

      t.timestamps null: false
    end
  end
end
