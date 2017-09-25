class Addemployee < ActiveRecord::Migration[5.0]
  def change
    add_column :contrats, :empcivilite, :string
    add_column :contrats, :birthplace, :string
    add_column :contrats, :birthdate, :date
    add_column :contrats, :nationalite, :string
    add_column :contrats, :permissejourexp, :date
    add_column :contrats, :permissejourdate, :date
    add_column :contrats, :permissejournum, :string
    add_column :contrats, :permissejourloc, :string

  end
end
