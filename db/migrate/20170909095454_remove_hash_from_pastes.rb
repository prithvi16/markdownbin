class RemoveHashFromPastes < ActiveRecord::Migration[5.1]
  def change
    remove_column :pastes, :hash, :string
  end
end
