# This migration comes from hyper_kitten_meow (originally 20220221205003)
class AddCategoricalTags < ActiveRecord::Migration[7.0]
  def change
    create_table :categorical_tags do |t|
      t.string :label
      t.string :slug

      t.timestamps null: false

      t.index :label, unique: true
      t.index :slug, unique: true
    end
    create_table :categorical_taggings do |t|
      t.references :taggable, polymorphic: true, index: true
      t.references :tag, foreign_key: { to_table: :categorical_tags }
    end
  end
end
