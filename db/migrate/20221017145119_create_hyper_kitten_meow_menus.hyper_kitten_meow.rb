# This migration comes from hyper_kitten_meow (originally 20220930141939)
class CreateHyperKittenMeowMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :hyper_kitten_meow_menus do |t|
      t.string :name
      t.string :slug, unique: true, null: false, index: true

      t.timestamps
    end
  end
end
