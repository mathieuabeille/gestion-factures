class Addnsecu < ActiveRecord::Migration[5.0]
  def change
  add_column :contrats, :nsecu, :string
  end
end
