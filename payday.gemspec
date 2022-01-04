# -*- encoding: utf-8 -*-
$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require "payday/version"

Gem::Specification.new do |s|
  s.name        = "payday"
  s.version     = Payday::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Markus Schwed"]
  s.email       = ["markus@company-mood.com"]
  s.homepage    = "https://github.com/CompanyMood/payday"
  s.summary     = "A simple library for rendering invoices. (Original by Alan Johnson / Commondream)"
  s.description = <<-EOF
    This is a fork of the sadly unmaintained Gem commondream/payday
    Payday is a library for rendering invoices. At present it supports rendering
    invoices to pdfs.
  EOF

  s.add_dependency("prawn", "~> 2.4")
  s.add_dependency("money", "~> 6.5")
  s.add_dependency("prawn-svg", "~> 0.32")
  s.add_dependency("prawn-table", "~> 0.2")
  s.add_dependency("i18n", "~> 0.7")

  s.add_development_dependency("rspec", "~> 3.1.0")

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables =
    `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ["lib"]
end
