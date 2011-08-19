class AddTitle < ActiveRecord::Migration
  def self.up
     add_column :create_ratings, :titleVal, :string
  end

  def self.down
  remove_column :create_ratings, :titleVal, :string
  end
end
