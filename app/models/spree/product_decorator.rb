Spree::Product.class_eval do

  attr_accessible :discounted_amount

  delegate_belongs_to :master,
                      :discounted_amount,
                      :display_price_without_discounted_amount,
                      :price_without_discounted_amount,
                      :discount_as_percentage,
                      :discount_as_money,
                      :discounted?

end