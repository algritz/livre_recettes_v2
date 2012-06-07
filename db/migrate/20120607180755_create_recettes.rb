class CreateRecettes < ActiveRecord::Migration
  def change
    create_table :recettes do |t|
      t.string :title, :null => false
      t.string :source
      t.integer :author_id, :null => false
      t.integer :category_id, :null => false
      t.string :preparation_time
      t.string :marinade_time
      t.string :cooking_time
      t.string :portion
      t.text :ingredient, :null => false
      t.text :instruction, :null => false
      t.text :note
      t.text :tip
      t.string :suggested_meal
      t.text :suggested_wine

      t.timestamps

    end

    add_index :recettes, :author_id
    add_index :recettes, :title
    add_index :recettes, :category_id

  end
end
