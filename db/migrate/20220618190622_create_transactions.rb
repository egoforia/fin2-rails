class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.monetize :amount
      t.references :category, null: false, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
