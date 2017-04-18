class CreatePassengers < ActiveRecord::Migration[5.0]
  def change
    create_table :passengers do |t|
      t.string :name
      t.string :ticket_number
      t.string :integer
    end
  end
end
