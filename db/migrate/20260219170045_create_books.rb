class CreateBooks < ActiveRecord::Migration[8.1]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :status
      t.string :isbn
      t.timestamps
    end
    
    add_index :books, :status
  end
end
