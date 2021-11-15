class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :type
      t.string :name
      t.integer :cost
    end
  end
end
