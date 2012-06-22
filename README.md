Stomp Mailer
==============

ActionMailer delivery method that delivers the mails to a queue using the stomp protocol.


Usage
-----

Create a mail.rb initializer like this:

    ActionMailer::Base.delivery_method = :stomp

    ActionMailer::Base.stomp_settings = {
     :host       => "myacitvemq.mydomain.com",
     :login      => "my_activemq_login",
     :passcode   => "my_activemq_passcode",
     :queue      => "mail.send"
    }


Now you can **`.deliver!`** your emails like always, but they will end up in the queue configured above.


You have to implement a demon to process that queue and actually send the e-mails
