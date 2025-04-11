class AddDatesToLoans < ActiveRecord::Migration[8.0]
  def change
    add_column :loans, :start_date, :date
    add_column :loans, :end_date, :date
  end
end
