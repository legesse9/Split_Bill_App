class CreateExpenses < ActiveRecord::Migration[7.1]
  def change
    create_table :expenses do |t|
      t.references :trip, null: false, foreign_key: true
      t.references :payer, null: false, foreign_key: true
      t.string :description
      t.decimal :amount
      t.date :date

      t.timestamps
    end
  end
end
