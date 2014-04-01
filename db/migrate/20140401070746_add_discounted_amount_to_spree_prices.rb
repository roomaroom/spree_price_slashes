class AddDiscountedAmountToSpreePrices < ActiveRecord::Migration
  def change
    add_column :spree_prices, :discounted_amount, :decimal
  end
end
