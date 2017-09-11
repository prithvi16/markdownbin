class RemovePassCheckFromPastes < ActiveRecord::Migration[5.1]
  def change
    remove_column :pastes, :pass_check, :string
  end
end
