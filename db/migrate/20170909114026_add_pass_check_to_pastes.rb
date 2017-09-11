class AddPassCheckToPastes < ActiveRecord::Migration[5.1]
  def change
    add_column :pastes, :pass_check, :string
  end
end
