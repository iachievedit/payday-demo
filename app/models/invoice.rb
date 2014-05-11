class Invoice < ActiveRecord::Base
  attr_accessible :bill_to, :paid, :paid_on
  has_many :invoiceitems
end
