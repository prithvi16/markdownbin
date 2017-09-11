class AddPassKeyToPastes < ActiveRecord::Migration[5.1]
  def change
    add_column :pastes, :pass_key, :string
  end
end
