class AddSearchOptionsToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :search_religion, :integer
    add_column :users, :search_cast, :integer
    add_column :users, :search_subcast, :integer
    add_column :users, :search_sex, :integer
    add_column :users,:search_job, :integer
    add_column :users, :search_mothertongue, :integer
   
  end

  def self.down
        remove_column :users, :search_religion
  
    remove_column :users, :search_cast
    remove_column :users, :search_subcast
    remove_column :users, :search_sex
    remove_column :users,:search_job
    remove_column :users, :search_mothertongue
  end
end
