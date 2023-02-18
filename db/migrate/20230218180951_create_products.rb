class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title_ru
      t.string :title_en
      t.text :desc_ru
      t.string :desc_en
      t.string :text
      t.references :country, null: false, foreign_key: true
      t.references :manufacturer, null: false, foreign_key: true
      t.decimal :price

      t.timestamps
    end
  end
end
