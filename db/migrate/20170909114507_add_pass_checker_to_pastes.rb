class AddPassCheckerToPastes < ActiveRecord::Migration[5.1]
  def change
    add_column :pastes, :pass_checker, :boolean , :default => false
    
  end
end
