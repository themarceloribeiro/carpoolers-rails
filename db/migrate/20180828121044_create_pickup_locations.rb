# frozen_string_literal: true

class CreatePickupLocations < ActiveRecord::Migration[5.2]
  def change
    create_table  :pickup_locations do |t|
      t.integer   :carpool_id
      t.time      :arrival_time
      t.string    :location
      t.decimal   :latitude, precision: 15, scale: 10
      t.decimal   :longitude, precision: 15, scale: 10
      t.integer   :sorting_index
      t.timestamps
    end

    add_index :pickup_locations, :carpool_id
  end
end
