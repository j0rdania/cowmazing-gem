Gem::Specification.new do |s|
  s.name               = "cowmazing"
  s.version            = "0.0.2"
  s.default_executable = "cowmazing"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sparky", "Grace"]
  s.date = %q{2017-04-21}
  s.description = %q{For all your cow needs}
  s.email = %q{cowmazingness@gmail.com}
  s.files = ["Rakefile", "lib/cowmazing.rb", "bin/cowmazing"]
  s.test_files = ["test/test_cowmazing.rb"]
  s.homepage = %q{http://rubygems.org/gems/cowmazing}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Cowmazing!}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

