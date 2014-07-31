Spree::Product.class_eval do

  attr_accessible :discounted_amount
  delegate_belongs_to :master, :discounted_amount

end