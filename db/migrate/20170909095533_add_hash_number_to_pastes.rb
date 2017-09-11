class AddHashNumberToPastes < ActiveRecord::Migration[5.1]
  def change
    add_column :pastes, :hash_number, :string
    add_index :pastes, :hash_number
  end
end
