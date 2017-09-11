class AddHashToPastes < ActiveRecord::Migration[5.1]
  def change
    add_column :pastes, :hash, :string
    add_index :pastes, :hash
  end
end
