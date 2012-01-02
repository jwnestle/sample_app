class AddSaltToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :salt, :string
  end
  
  def self.down
    add_column :users, :salt
  end
end
