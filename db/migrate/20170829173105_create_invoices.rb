class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.references :user, foreign_key: true, null: false
      t.string :office, null: false
      t.string :object, null: false
      t.string :supplier, null: false
      t.string :name, null: false
      t.string :serial
      t.string :specific_id
      t.string :emplacement, null: false
      t.float :value
      t.date :begin
      t.date :end
      t.timestamps
    end
  end
end
