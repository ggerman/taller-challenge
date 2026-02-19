class AddDefaultToBooksStatus < ActiveRecord::Migration[8.1]
  def change
    change_column_default :books, :status, 0
  end
end
