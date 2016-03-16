class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :email
      t.string :last_name
      t.string :first_name
      t.string :sex
      t.integer :signup_type
      t.string :employer
      t.string :party
      t.string :registered_address_state
      t.string :registered_address_country_code


      t.timestamps null: false
    end
  end
end
