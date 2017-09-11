class AddViewsToPastes < ActiveRecord::Migration[5.1]
  def change
    add_column :pastes, :views, :integer , default: 0
  end
end
