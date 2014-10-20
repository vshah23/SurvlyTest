class SetDefaultValues < ActiveRecord::Migration
  def up
  	### Update database defaults for complete and archived
  	change_column :tasks, :complete, :boolean, :default => false, :null => false
  	change_column :tasks, :archived, :boolean, :default => false, :null => false
  end
end
