class CreateCareships < ActiveRecord::Migration[5.1]
  def change
    create_table :careships do |t|
      t.references :user, foreign_key: true
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
