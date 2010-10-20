class AddColumnsToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :dob, :integer
    add_column :users, :address, :text
    add_column :users, :father, :string
    add_column :users, :mother, :string
    add_column :users, :father_job, :string
    add_column :users, :mother_job, :string
    add_column :users, :siblings, :integer
    add_column :users, :mothertongue, :string
    add_column :users, :cast, :integer
    add_column :users, :subcast, :integer
    add_column :users, :job, :string
    add_column :users, :salary, :integer
    add_column :users, :status, :integer
    add_column :users, :height, :integer
    add_column :users, :weight, :integer
    add_column :users, :complexion, :integer
    add_column :users, :built, :integer

  end

  def self.down
  end
end
