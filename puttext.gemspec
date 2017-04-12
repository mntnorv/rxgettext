lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name     = 'puttext'
  s.version  = '0.0.1'
  s.date     = Date.today.to_s
  s.summary  = 'Extract gettext strings from Ruby source'
  s.authors  = ['Mantas Norvaiša']
  s.email    = 'mntnorv@gmail.com'
  s.homepage = 'https://github.com/mntnorv/puttext'
  s.license  = 'MIT'

  s.files         = `git ls-files`.split
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.required_ruby_version = '>= 2.0.0'

  s.add_runtime_dependency('parser', '>= 2.4.0.0', '< 3.0')

  s.add_development_dependency('rake')
  s.add_development_dependency('rspec', ['~> 3.5'])
end