# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "stomp_mailer/version"

Gem::Specification.new do |s|
  s.name        = "stomp_mailer"
  s.version     = StompMailer::VERSION
  s.authors     = ["Sandro Duarte"]
  s.email       = ["sandrods@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{ActionMailer delivery method that delivers the mails to a queue using the stomp protocol}
  s.description = %q{ActionMailer delivery method that delivers the mails to a queue using the stomp protocol}

  s.rubyforge_project = "stomp_mailer"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "stomp"
end
