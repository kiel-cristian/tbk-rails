require 'rails/generators'
module TbkRails
  class InstallGenerator < Rails::Generators::Base
    desc "Install WebPayController views and a controller template"
    source_root File.expand_path("../../templates", __FILE__)

    def install_tbk_webpay
      mode = yes?("Would you like to create minimal views? [Y|N]")

      if mode
        say("Installing minimal version of TbkRails", :yellow)
      else
        say("Installing default version of TbkRails", :yellow)
      end

      say("Installing controllers ...", :yellow)
      install_controllers
      say("Ready!")

      say("Installing routes ...", :yellow)
      install_routes
      say("Ready!")

      say("Installing views ...", :yellow)
      if mode
        minimal
      else
        default
      end

      say("Complete!", :green)

    end

    private

    def minimal
      install_views "views/minimal/webpay"
    end

    def default
      install_views "views/default/webpay"
    end

    def install_views dir
      directory dir, "app/views/webpay"
    end

    def install_controllers
      directory "controllers", "app/controllers"
    end

    def install_routes
      route("post '/webpay/pay'")
      route("post '/webpay/confirmation'")
      route("get '/webpay/success'")
      route("get '/webpay/failure'")
    end

  end
end