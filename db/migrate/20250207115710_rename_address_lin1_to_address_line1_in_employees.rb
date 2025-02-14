class RenameAddressLin1ToAddressLine1InEmployees < ActiveRecord::Migration[8.0]
  def change
    rename_column :employees, :address_lin1, :address_line_1
  end
end
