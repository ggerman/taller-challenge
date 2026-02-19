class CreateReservations < ActiveRecord::Migration[8.1]
  def change
    create_table :reservations do |t|
      t.references :book
      t.string :email
      t.integer :status
      t.timestamps
    end
  end
end
