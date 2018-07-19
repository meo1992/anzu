class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :national
      t.string :bogo
      t.string :japanese
      t.string :gengo
      t.string :lesson_style
      t.string :place
      t.integer :price_normal
      t.integer :price_first
      t.text :listing_content
      t.boolean :active
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
