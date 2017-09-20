# class CreateInvoices < ActiveRecord::Migration[5.0]
#   def change
#     create_table :invoices do |t|
#       t.references :user, foreign_key: true, null: false
#       t.string :office, null: false
#       t.string :object, null: false
#       t.string :supplier, null: false
#       t.string :name, null: false
#       t.string :serial
#       t.string :specific_id
#       t.string :emplacement, null: false
#       t.float :value
#       t.date :begin
#       t.date :end
#       t.timestamps
#     end
#   end
# end
class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.references :user, foreign_key: true
      t.string :entite
      t.string :type
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
