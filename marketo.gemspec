Gem::Specification.new do |gem|
  gem.name        = "marketo2"
  gem.summary     = "A client for the marketo API"
  gem.description = <<-EOF
     Allows easy integration with marketo from ruby (v2 and up). You can synchronize leads and fetch them back by email.
     By default this is configured for the SOAP wsdl file: http://app.marketo.com/soap/mktows/1_4?WSDL but this is
     configurable when you construct the client, e.g.
     client = Rapleaf::Marketo.new_client(<access_key>, <secret_key>, (api_subdomain = 'na-i'), (api_version = '1_5'), (document_version = '1_4'))
     More information at https://www.rapleaf.com/developers/marketo.
     Forked from James O'Brien's marketo gem.
  EOF
  gem.email        = "hanaiapa@gmail.com"
  gem.authors      = ["Maxime Domain"]
  gem.homepage     = "https://github.com/hanaiapa/marketo2"
  gem.files        = Dir['lib/**/*.rb']
  gem.require_path = ['lib']
  gem.test_files   = Dir['spec/**/*_spec.rb']
  gem.version      = "1.4.0"
  gem.has_rdoc     = true
  gem.rdoc_options << '--title' << 'Marketo Client Gem' << '--main' << 'Rapleaf::Marketo::Client'

  gem.add_development_dependency('rspec', '>= 2.3.0')
  gem.add_dependency('savon', '~> 1.2.0')
end
