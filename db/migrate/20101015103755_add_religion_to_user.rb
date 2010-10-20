class AddReligionToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :religion, :integer
  end

  def self.down
  end
end
