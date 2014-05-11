class Invoiceitem < ActiveRecord::Base
  attr_accessible :amount, :description
  belongs_to :invoice
end
