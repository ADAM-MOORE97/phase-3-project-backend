class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone_number
      t.string :address
      t.string :email
      t.date :DOB
      t.string :gender
    end
  end
end
