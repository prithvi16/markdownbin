class RemovePassKeyFromPastes < ActiveRecord::Migration[5.1]
  def change
    remove_column :pastes, :pass_key, :string
  end
end
