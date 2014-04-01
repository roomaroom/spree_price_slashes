Spree::Price.class_eval do

  attr_accessible :discounted_amount

  validates :discounted_amount, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates_each :discounted_amount do |record, attr, value|
    record.errors.add(attr, 'cannot be greater than the price') if discounted_amount > amount
  end

  def discounted?
    !!discounted_amount
  end

  def amount
    discounted? ? discounted_amount : amount
  end

end