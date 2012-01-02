class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
<<<<<<< HEAD

  def self.down
    drop_table :users
  end
=======
  def self.down
    drop_table :users
>>>>>>> modeling-users
end
