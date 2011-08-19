class CreateCreateRatings < ActiveRecord::Migration
  def self.up
    create_table :create_ratings do |t|
      t.string :ticketNumber
      t.integer :ratingVal

      t.timestamps
    end
  end

  def self.down
    drop_table :create_ratings
  end
end
