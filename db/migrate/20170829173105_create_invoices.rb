# class CreateInvoices < ActiveRecord::Migration[5.0]

class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.references :user, foreign_key: true
      t.string :entite
      t.string :specifique_id
      t.string :fournisseur
      t.string :marque
      t.string :nom
      t.string :description
      t.string :serial
      t.float :value
      t.string :duree_garantie
      t.string :emplacement
      t.float :value
      t.date :date_achat
      t.date :fin_amortissement
      t.string :numero_comptabilite
      t.string :processeur
      t.string :RAM
      t.string :memoire
      t.string :systeme_exploitation
      t.string :numero_OS
      t.timestamps
    end
  end
end
