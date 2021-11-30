class CreateLoans < ActiveRecord::Migration[6.1]
  def change
    create_table :loans do |t|
      t.integer :person_id
      t.integer :item_id
      t.timestamp :created_by
      t.timestamp :updated_by
    end
  end
end
