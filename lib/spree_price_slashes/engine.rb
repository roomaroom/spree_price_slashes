module SpreePriceSlashes
  class Engine < ::Rails::Engine

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      Dir.glob Engine.root.join("app/**/*_decorator*.rb") do |c|
        # if Rails.env.production? || Rails.env.staging? 
          require(c)
        # else
        #   load(c)
        # end
      end
    end

    config.to_prepare &method(:activate).to_proc

  end
end
