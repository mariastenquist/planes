class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.references :aircraft, foreign_key: true
      t.references :passenger, foreign_key: true
    end
  end
end
