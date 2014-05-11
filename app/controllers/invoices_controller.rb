class InvoicesController < ApplicationController
  def pdf
    @invoice = Invoice.find(params[:id])
    
    invoice = Payday::Invoice.new(invoice_number:  @invoice.id,
                                  bill_to:         @invoice.bill_to)

    @invoice.invoiceitems.each do |item| 
      invoice.line_items << Payday::LineItem.new(price:             item.amount,
                                                 display_quantity:  1,
                                                 description:       item.description)
    end

    if @invoice.paid
      invoice.paid_at = @invoice.paid_on
    end

    invoice.notes = "Invoiced on #{Date.today}\nNET 30"
    
    send_data invoice.render_pdf, :filename => "invoice.pdf", :type => "application/pdf", :disposition => "inline"

  end
end
