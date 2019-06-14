class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.integer :user_profile_id
      t.string :street
      t.string :city
      t.string :state
      t.decimal :lat
      t.decimal :lon

      t.timestamps
    end
  end
end
