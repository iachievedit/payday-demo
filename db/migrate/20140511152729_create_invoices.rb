class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :bill_to
      t.boolean :paid
      t.date :paid_on

      t.timestamps
    end
  end
end
