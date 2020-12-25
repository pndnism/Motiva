require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Motiva
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    before_action :authenticate_user!
  
    def after_sign_in_path_for(resource)
      "http://www.google.co.jp/" # ログイン後に遷移するpathを設定
    end
  
    def after_sign_out_path_for(resource)
      "http://www.google.co.jp/" # ログアウト後に遷移するpathを設定
    end
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end

end
