class SetDefaultValues < ActiveRecord::Migration
  def up
  	change_column :tasks, :complete, :boolean, :default => false, :null => false
  	change_column :tasks, :archived, :boolean, :default => false, :null => false
  end
end
