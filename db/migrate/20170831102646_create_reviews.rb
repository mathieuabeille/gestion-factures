class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.text :content
      t.text :auteur
      t.references :invoice, foreign_key: true

      t.timestamps
    end
  end
end
