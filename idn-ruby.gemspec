# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{idn-ruby}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Erik Abele", "Bharanee Rathna"]
  s.date = %q{2021-06-09}
  s.description = %q{
    Ruby Bindings for the GNU LibIDN library, an implementation of the
    Stringprep, Punycode and IDNA specifications defined by the IETF
    Internationalized Domain Names (IDN) working group.

    Included are the most important parts of the Stringprep, Punycode
    and IDNA APIs like performing Stringprep processings, encoding to
    and decoding from Punycode strings and converting entire domain names
    to and from the ACE encoded form.
  }
  s.email = %q{deepfryed@gmail.com}
  s.extensions = ["ext/extconf.rb"]
  s.extra_rdoc_files = [
    "LICENSE",
    "README"
  ]
  s.files = [
    "CHANGES",
    "LICENSE",
    "NOTICE",
    "README",
    "Rakefile",
    "ext/idn.c",
    "ext/idn.h",
    "ext/idna.c",
    "ext/punycode.c",
    "ext/stringprep.c"
  ]
  s.homepage = %q{http://github.com/deepfryed/idn-ruby}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{LibIDN Ruby Bindings.}
  s.test_files = ["test/ts_IDN.rb", "test/tc_Punycode.rb", "test/tc_Stringprep.rb", "test/tc_Idna.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

