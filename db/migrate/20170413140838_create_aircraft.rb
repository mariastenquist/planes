class CreateAircraft < ActiveRecord::Migration[5.0]
  def change
    create_table :aircrafts do |t|
      t.integer :tail_number
      t.integer :weight
      t.string :type
      t.string :location
    end
  end
end
