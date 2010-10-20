class CreateSubcasts < ActiveRecord::Migration
  def self.up
    create_table :subcasts do |t|
      t.string :subcast
      t.timestamps
    end
  end

  def self.down
    drop_table :subcasts
  end
end
