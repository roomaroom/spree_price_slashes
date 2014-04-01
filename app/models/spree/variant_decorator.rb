Spree::Variant.class_eval do

  attr_accessible :discounted_amount

  delegate_belongs_to :default_price,
                      :display_price_without_discounted_amount,
                      :price_without_discounted_amount,
                      :discount_as_percentage,
                      :discount_as_money,
                      :discounted_amount,
                      :discounted? if Spree::Price.table_exists?

end