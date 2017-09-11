class RemovePassCheckerFromPastes < ActiveRecord::Migration[5.1]
  def change
    remove_column :pastes, :pass_checker, :boolean
  end
end
