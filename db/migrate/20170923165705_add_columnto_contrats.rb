class AddColumntoContrats < ActiveRecord::Migration[5.0]
  def change
    add_column :contrats, :startdate, :date
  end
end
