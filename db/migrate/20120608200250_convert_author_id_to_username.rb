class ConvertAuthorIdToUsername < ActiveRecord::Migration
  def change
    remove_index :recettes, :author_id
    remove_column :recettes, :author_id
    add_column :users, :username, :string
  end
end
