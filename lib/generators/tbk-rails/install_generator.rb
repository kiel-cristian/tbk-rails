require 'rails/generators'
module Tbk
  module Rails
    class InstallGenerator < Rails::Generators::Base
      desc "Install WebPayController views and a controller template"
      source_root File.expand_path("../templates", __FILE__)

      def install_tbk_webpay
        mode = yes?("Would you like to create minimal views?")

        install_controllers
        install_routes

        if mode
          minimal
        else
          default
        end

      end

      private

      def minimal
        install_views Dir.glob('views/minimal/webpay/*')
      end

      def default
        install_views Dir.glob('views/default/webpay/*')
      end

      def install_views list
        list.each do |view|
          file = file_name(view)
          copy_file view, "app/views/webpay/#{file}"
        end
      end

      def install_controllers
        controllers = Dir.glob('controllers/webpay/*')

        controllers.each do |controller|
          file = file_name(controller)
          copy_file controller, "app/controllers/#{file}"
        end
      end

      def install_routes
        route("post '/webpay/pay'")
        route("post '/webpay/confirmation'")
        route("get '/webpay/success'")
        route("get '/webpay/failure'")
      end

      def file_name dir
        dir.split("/").last
      end

    end
  end
end