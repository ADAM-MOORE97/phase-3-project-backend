class UpdateLoanColumns < ActiveRecord::Migration[6.1]
  def change
    add_column :loans, :term, :integer
    add_column :loans, :interest_rate, :float
  end
end
