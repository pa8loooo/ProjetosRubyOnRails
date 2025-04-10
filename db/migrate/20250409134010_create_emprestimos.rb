class CreateEmprestimos < ActiveRecord::Migration[8.0]
  def change
    create_table :emprestimos do |t|
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.boolean :available

      t.timestamps
    end
  end
end
