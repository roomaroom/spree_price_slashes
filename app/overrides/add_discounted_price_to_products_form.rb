Deface::Override.new(:virtual_path  => 'spree/admin/products/_form',
                     :name          => 'add_discounted_price_to_products_form',
                     :insert_bottom => '[data-hook="admin_product_form_right"]',
                     :partial       => 'spree/admin/products/discounted_price',
                     :disabled      => false)