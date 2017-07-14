class CreateDailyRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :daily_records do |t|
      t.integer :systolic_bp
      t.integer :diastolic_bp
      t.integer :heart_rate
      t.text :notes
      t.integer :care_receiver_id
      t.integer :user_id

      t.timestamps
    end
  end
end
