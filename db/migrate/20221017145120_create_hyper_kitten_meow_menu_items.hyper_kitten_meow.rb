# This migration comes from hyper_kitten_meow (originally 20220930141953)
class CreateHyperKittenMeowMenuItems < ActiveRecord::Migration[7.0]
  def change
    create_table :hyper_kitten_meow_menu_items do |t|
      t.references :page, null: true, foreign_key: { to_table: :hyper_kitten_meow_pages }
      t.references :menu, null: false, foreign_key: { to_table: :hyper_kitten_meow_menus }
      t.string :title
      t.string :url
      t.boolean :new_window, default: false, null: false
      t.integer :position

      t.timestamps
    end
  end
end
