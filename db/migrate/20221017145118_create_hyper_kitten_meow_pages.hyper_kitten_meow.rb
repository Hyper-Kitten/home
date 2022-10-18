# This migration comes from hyper_kitten_meow (originally 20220805165025)
class CreateHyperKittenMeowPages < ActiveRecord::Migration[7.0]
  def change
    create_table :hyper_kitten_meow_pages do |t|
      t.string :title
      t.boolean :published, null: false, default: false
      t.datetime :published_at
      t.text :body
      t.string :slug

      t.timestamps

      t.index :slug, unique: true
    end
  end
end
