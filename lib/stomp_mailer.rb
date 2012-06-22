require 'rails'
require 'stomp'
require "stomp_mailer/version"
require "stomp_mailer/delivery"

module StompMailer

  class Railtie < Rails::Railtie

    config.before_configuration do
      ActionMailer::Base.add_delivery_method :stomp, StompMailer::Delivery
    end

  end

end
