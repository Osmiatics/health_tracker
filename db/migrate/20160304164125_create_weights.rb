class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.integer :daily_weight
      t.datetime :date

      t.timestamps null: false
    end
  end
end
