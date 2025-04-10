class RenameEmprestimosToLoans < ActiveRecord::Migration[7.0]
  def change
    rename_table :emprestimos, :loans
  end
end