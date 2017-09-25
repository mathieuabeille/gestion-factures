class AddSocietechampstoContrats < ActiveRecord::Migration[5.0]
  def change
     add_column :contrats, :sville, :string
  end
end
