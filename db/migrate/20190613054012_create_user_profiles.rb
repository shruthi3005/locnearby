class CreateUserProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :user_profiles do |t|
      t.integer :user_id
      t.string :name
      t.date :dob
      t.string :gender

      t.timestamps
    end
  end
end
