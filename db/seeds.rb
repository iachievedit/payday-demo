
invoices = [{bill_to:  "Merchant A",
             paid:     false,
             paid_on:  nil,
             items:    [{description:  "Product A",
                              amount:       1999},
                        {description:  "Product B",
                         amount:       2499}]},
            {bill_to:  "Merchant B",
             paid:     true,
             paid_on:  Date.today,
             items:    [{description:  "Product A",
                         amount:       1999},
                        {description:  "Product B",
                         amount:       2499},
                        {description:  "Product C",
                         amount:       999},
                       ]
            }
            ]
              
invoices.each do |i|
  invoice = Invoice.create(bill_to:  i[:bill_to],
                           paid:     i[:paid],
                           paid_on:  i[:paid_on])
  i[:items].each do |ii|
    invoice_item = Invoiceitem.create(description:  ii[:description],
                                      amount:       ii[:amount])
    invoice_item.invoice = invoice
    invoice_item.save!
  end
  invoice.save!
end
