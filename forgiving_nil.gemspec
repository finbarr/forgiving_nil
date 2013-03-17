# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "forgiving_nil/version"

Gem::Specification.new do |s|
  s.name        = "forgiving_nil"
  s.version     = ForgivingNil::VERSION
  s.authors     = ["Finbarr Taylor"]
  s.email       = [""]
  s.homepage    = ""
  s.summary     = %q{You can simply ask nil to forgive you: nil.forgive{real_object.might_be_nil.dont.care} #=> nil or the value of care}
  s.description = %q{Forgiving Nil lets you forget about nil exceptions conveniently and temporarily when required}

  s.rubyforge_project = "forgiving_nil"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec", "~> 2.6"
end
