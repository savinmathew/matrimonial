class AddDobToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :dateofbirth, :date
  end

  def self.down
    remove_column :users, :dateofbirth
  end
end
