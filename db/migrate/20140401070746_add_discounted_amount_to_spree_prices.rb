class AddDiscountedAmountToSpreePrices < ActiveRecord::Migration
  def change
    add_column :spree_prices, :discounted_amount, :decimal, :precision => 8, :scale => 2
  end
end
