class AddSocietetoContrats < ActiveRecord::Migration[5.0]
  def change
    add_column :contrats, :societe, :string
    add_column :contrats, :nsiret, :string
    add_column :contrats, :cnaf, :string
    add_column :contrats, :sadresse, :string
    add_column :contrats, :scposte, :string
    add_column :contrats, :sexerepresentant, :string
    add_column :contrats, :typesociete, :string
    add_column :contrats, :nomrepresentant, :string
    add_column :contrats, :prenomrepresentant, :string
    add_column :contrats, :posterepresentant, :string
    add_column :contrats, :numeroaffiliation, :string
    add_column :contrats, :regionurssaf, :string
    add_column :contrats, :adresseurssaf, :string
  end
end
