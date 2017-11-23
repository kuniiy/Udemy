class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.string :area_type
      t.string :category_type
      t.integer :people_type
      t.string :address
      t.string :listing_title
      t.text :listing_content
      t.integer :price_pernight
      t.boolean :active
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
