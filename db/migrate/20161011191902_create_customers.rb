class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :band_name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :phone
      t.string :email
      t.date :depart
      t.date :return
      t.integer :money
      t.integer :experience
      t.string :website
      t.string :soundcloud
      t.string :youtube
      t.string :bandcamp
      t.string :other_site
      t.text :artist_bio
      t.string :sounds_like1
      t.string :sounds_like2
      t.string :sounds_like3
      t.string :press_link1
      t.string :press_link2
      t.string :press_link3
      t.boolean :press_interest
      t.boolean :poster_interest
      t.boolean :event_interest
      t.boolean :advert_interest
      t.string :product_interest
      t.text :routing
      t.text :other_info
      t.string :referral

      t.timestamps null: false
    end
  end
end
