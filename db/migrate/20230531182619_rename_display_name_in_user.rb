class RenameDisplayNameInUser < ActiveRecord::Migration[7.0]
  def change
    rename_column  :users, :diplay_name, :display_name
  end
end
