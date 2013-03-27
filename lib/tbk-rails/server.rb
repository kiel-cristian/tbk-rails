module TbkRails
  class Server
    mattr_accessor :tbk_rails_confirmation_url_ip, :tbk_rails_confirmation_url_port, :tbk_confirmation_url_protocol

    tbk_rails_confirmation_url_ip = '127.0.0.1'
    tbk_rails_confirmation_url_port = '80'
    tbk_rails_confirmation_url_protocol = 'http'
  end
end
