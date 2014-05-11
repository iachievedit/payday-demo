class CreateInvoiceitems < ActiveRecord::Migration
  def change
    create_table :invoiceitems do |t|
      t.integer :invoice_id
      t.string :description
      t.integer :amount

      t.timestamps
    end
  end
end
