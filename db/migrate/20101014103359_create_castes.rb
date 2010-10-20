class CreateCastes < ActiveRecord::Migration
  def self.up
    create_table :castes do |t|
      t.string :caste
      t.timestamps
    end
  end

  def self.down
    drop_table :castes
  end
end
