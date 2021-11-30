class AddColumnsPeople < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :username, :string
    add_column :people, :password, :string
  end
end
