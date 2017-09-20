class CreateContrats < ActiveRecord::Migration[5.0]
  def change
    create_table :contrats do |t|
      t.string :nom
      t.string :prenom
      t.string :adresse
      t.timestamps
    end
  end
end
