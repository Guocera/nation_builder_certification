class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :status
      t.string :name
      t.string :intro
      t.string :time_zone
      t.datetime :start_time
      t.datetime :end_time

      t.string :contact_name
      t.string :contact_contact_phone
      t.boolean :contact_show_phone
      t.string :contact_contact_email
      t.string :contact_email
      t.boolean :contact_show_email

      t.string :rsvp_phone
      t.string :rsvp_address
      t.boolean :rsvp_allow_guests
      t.boolean :rsvp_accept_rsvps
      t.boolean :rsvp_gather_volunteers

      t.boolean :show_guests
      t.integer :capacity

      t.string :venue_name
      t.string :venue_address_address
      t.string :venue_address_city
      t.string :venue_address_state

      t.timestamps null: false
    end
  end
end
