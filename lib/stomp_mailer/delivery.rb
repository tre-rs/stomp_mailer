module StompMailer

  class Delivery

    attr_accessor :settings

    def initialize(values)
      self.settings = { :host       => 'localhost',
                        :login      => 'guest',
                        :passcode   => 'gest',
                        :port       =>  61613,
                        :queue      => 'mail.send',
                        :max_reconnect_attempts => 10
                      }.merge!(values)
    end

    def deliver!(mail)
      conn = get_connection
      conn.publish("/queue/#{settings[:queue]}", mail.to_s)
      conn.disconnect
    end

    private

    def get_connection

      conn_hash = {
        :hosts => [{:login    => settings[:login],
                    :passcode => settings[:passcode],
                    :host     => settings[:host],
                    :port     => settings[:port]}
                  ],
        :connect_headers        => {},
        :max_reconnect_attempts => settings[:max_reconnect_attempts]
      }

      con = ::Stomp::Connection.new(conn_hash)

    end
  end

end