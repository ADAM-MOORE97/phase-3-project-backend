class UploadLoans < ActiveRecord::Migration[6.1]
  def change
    add_column :loans, :current_value, :integer
    end
end
