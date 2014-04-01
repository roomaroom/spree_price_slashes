Deface::Override.new(:virtual_path  => 'spree/admin/variants/_form',
                     :name          => 'add_discounted_price_to_variants_form',
                     :insert_after  => '[data-hook="cost_price"]',
                     :partial       => 'spree/admin/variants/discounted_price',
                     :disabled      => false)