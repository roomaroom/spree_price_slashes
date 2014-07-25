Spree::Price.class_eval do

  attr_accessible :discounted_amount

  validates :discounted_amount, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates_each :discounted_amount do |record, attr, value|
    record.errors.add(attr, 'cannot be greater than the price') if value > record.amount
  end

  def discounted?
    !!discounted_amount
  end

  def display_price_with_discounted_amount
    discounted? ? money_with_discount : money
  end
  alias_method_chain :display_price, :discounted_amount

  def price_with_discounted_amount
    discounted?? discounted_amount : price_without_discounted_amount
  end
  alias_method_chain :price, :discounted_amount

  def money_with_discount
    Spree::Money.new(discounted_amount || 0, { currency: currency })
  end

  def discount_as_percentage
    return unless discounted?
    percentage = (((amount - discounted_amount) / amount) * 100).to_i
    "#{percentage}%"
  end

  def discount_as_money
    return unless discounted?
    discount = amount - discounted_amount
    Spree::Money.new(discount || 0, { currency: currency })
  end

end